package wres.pipeline;

import java.io.Closeable;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.lang3.tuple.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.config.ProjectConfigException;
import wres.config.ProjectConfigPlus;
import wres.config.ProjectConfigs;
import wres.config.generated.DestinationConfig;
import wres.config.generated.DestinationType;
import wres.config.generated.MetricsConfig;
import wres.config.generated.ProjectConfig;
import wres.datamodel.messages.MessageFactory;
import wres.datamodel.pools.PoolRequest;
import wres.datamodel.space.FeatureGroup;
import wres.datamodel.space.FeatureTuple;
import wres.datamodel.thresholds.ThresholdsByMetric;
import wres.datamodel.thresholds.ThresholdsByMetricAndFeature;
import wres.events.Evaluation;
import wres.events.EvaluationEventUtilities;
import wres.events.subscribe.ConsumerFactory;
import wres.events.subscribe.EvaluationSubscriber;
import wres.events.subscribe.SubscriberApprover;
import wres.eventsbroker.BrokerConnectionFactory;
import wres.io.Operations;
import wres.io.concurrency.Executor;
import wres.io.concurrency.Pipelines;
import wres.io.config.ConfigHelper;
import wres.io.data.caching.MeasurementUnits;
import wres.io.geography.FeatureFinder;
import wres.io.pooling.PoolFactory;
import wres.io.project.Project;
import wres.io.retrieval.UnitMapper;
import wres.io.thresholds.ThresholdReader;
import wres.io.writing.SharedSampleDataWriters;
import wres.io.writing.WriteException;
import wres.io.writing.commaseparated.pairs.PairsWriter;
import wres.io.writing.netcdf.NetcdfOutputWriter;
import wres.pipeline.Evaluator.DatabaseServices;
import wres.statistics.generated.Outputs;
import wres.statistics.generated.Consumer.Format;
import wres.system.ProgressMonitor;
import wres.system.SystemSettings;

/**
 * Class with functions to help in generating metrics and processing metric products.
 *
 * TODO: abstract away the functions used for graphical processing to a separate helper, GraphicalProductsHelper.
 *
 * @author James Brown
 * @author Jesse Bickel
 */
class ProcessorHelper
{
    private static final Logger LOGGER = LoggerFactory.getLogger( ProcessorHelper.class );

    /**
     * Unique identifier for this instance of the core messaging client.
     */

    private static final String CLIENT_ID = EvaluationEventUtilities.getUniqueId();

    /**
     * Processes an evaluation.
     *
     * Assumes that a shared lock for evaluation has already been obtained.
     * @param systemSettings the system settings
     * @param databaseServices the database services
     * @param projectConfigPlus the project configuration
     * @param executors the executors
     * @param connections broker connections
     * @param monitor an event that monitors the life cycle of the evaluation, not null
     * @return the resources written and the hash of the project data
     * @throws WresProcessingException if the evaluation processing fails
     * @throws ProjectConfigException if the declaration is incorrect
     * @throws NullPointerException if any input is null
     * @throws IOException if the creation of outputs fails
     */

    static Pair<Set<Path>, String> processEvaluation( SystemSettings systemSettings,
                                                      DatabaseServices databaseServices,
                                                      ProjectConfigPlus projectConfigPlus,
                                                      Executors executors,
                                                      BrokerConnectionFactory connections,
                                                      EvaluationEvent monitor )
            throws IOException
    {
        Objects.requireNonNull( systemSettings );
        Objects.requireNonNull( databaseServices );
        Objects.requireNonNull( projectConfigPlus );
        Objects.requireNonNull( executors );
        Objects.requireNonNull( connections );
        Objects.requireNonNull( monitor );

        Set<Path> resources = new TreeSet<>();
        String projectHash = null;

        // Get a unique evaluation identifier
        String evaluationId = EvaluationEventUtilities.getUniqueId();
        monitor.setEvaluationId( evaluationId );

        // Create output directory
        Path outputDirectory = ProcessorHelper.createTempOutputDirectory( evaluationId );

        ProjectConfig projectConfig = projectConfigPlus.getProjectConfig();

        // Create a description of the evaluation
        wres.statistics.generated.Evaluation evaluationDescription =
                ProcessorHelper.getEvaluationDescription( projectConfigPlus );

        // Create netCDF writers
        List<NetcdfOutputWriter> netcdfWriters =
                ProcessorHelper.getNetcdfWriters( projectConfig,
                                                  systemSettings,
                                                  executors.getIoExecutor(),
                                                  outputDirectory );

        // Obtain any formats delivered by out-of-process subscribers.
        Set<Format> externalFormats = ProcessorHelper.getFormatsDeliveredByExternalSubscribers();

        LOGGER.debug( "These formats will be delivered by external subscribers: {}.", externalFormats );

        // Formats delivered by within-process subscribers, in a mutable list
        Set<Format> internalFormats = MessageFactory.getDeclaredFormats( evaluationDescription.getOutputs() );

        internalFormats = new HashSet<>( internalFormats );
        internalFormats.removeAll( externalFormats );

        LOGGER.debug( "These formats will be delivered by internal subscribers: {}.", internalFormats );

        String consumerId = EvaluationEventUtilities.getUniqueId();

        // Moving this into the try-with-resources would require a different approach than notifying the evaluation to 
        // stop( Exception e ) on encountering an error that is not visible to it. See discussion in #90292.
        Evaluation evaluation = null;

        try ( SharedWriters sharedWriters = ProcessorHelper.getSharedWriters( projectConfig,
                                                                              outputDirectory );
              // Create a subscriber for the format writers that are within-process. The subscriber is built for this
              // evaluation only, and should not serve other evaluations, else there is a risk that short-running
              // subscribers die without managing to serve the evaluations they promised to serve. This complexity 
              // disappears when all subscribers are moved to separate, long-running, processes: #89868
              ConsumerFactory consumerFactory = new StatisticsConsumerFactory( consumerId,
                                                                               new HashSet<>( internalFormats ),
                                                                               netcdfWriters,
                                                                               projectConfig );
              EvaluationSubscriber formatsSubscriber = EvaluationSubscriber.of( consumerFactory,
                                                                                executors.getProductExecutor(),
                                                                                connections,
                                                                                evaluationId ); )
        {
            // Restrict the subscribers for internally-delivered formats otherwise core clients may steal format writing
            // work from each other. This is expected insofar as all subscribers are par. However, core clients currently 
            // run in short-running processes, we want to estimate resources for core clients effectively, and some format
            // writers are stateful (e.g., netcdf), hence this is currently a bad thing. Goal: place all format writers in
            // long running processes instead. See #88262 and #88267.
            SubscriberApprover subscriberApprover =
                    new SubscriberApprover.Builder().addApprovedSubscriber( internalFormats,
                                                                            consumerId )
                                                    .build();

            // Package the details needed to build the evaluation
            EvaluationDetails evaluationDetails = new EvaluationDetails( projectConfigPlus,
                                                                         evaluationDescription,
                                                                         evaluationId,
                                                                         subscriberApprover,
                                                                         connections,
                                                                         monitor );

            // Open an evaluation, to be closed on completion or stopped on exception
            Pair<Evaluation, String> evaluationAndProjectHash = ProcessorHelper.processProjectConfig( evaluationDetails,
                                                                                                      systemSettings,
                                                                                                      databaseServices,
                                                                                                      executors,
                                                                                                      sharedWriters,
                                                                                                      netcdfWriters,
                                                                                                      outputDirectory );
            evaluation = evaluationAndProjectHash.getLeft();
            projectHash = evaluationAndProjectHash.getRight();

            // Wait for the evaluation to conclude
            evaluation.await();

            // Since the netcdf consumers are created here, they should be destroyed here. An attempt should be made to 
            // close the netcdf writers before the finally block because these writers employ a delayed write, which 
            // could still fail exceptionally. Such a failure should stop the evaluation exceptionally. For further 
            // context see #81790-21 and the detailed description in Evaluation.await(), which clarifies that awaiting 
            // for an evaluation to complete does not mean that all consumers have finished their work, only that they 
            // have received all expected messages. If this contract is insufficient (e.g., because of a delayed write
            // implementation), then it may be necessary to promote the underlying consumer/s to an external/outer 
            // subscriber that is responsible for messaging its own lifecycle, rather than delegating that to the 
            // Evaluation instance (which adopts the limited contract described here). An external subscriber within 
            // this jvm/process has the same contract as an external subscriber running in another process/jvm. It 
            // should only report completion when consumption is "done done".
            for ( NetcdfOutputWriter writer : netcdfWriters )
            {
                writer.close();
            }

            // Add the paths written by shared writers
            if ( sharedWriters.hasSharedSampleWriters() )
            {
                resources.addAll( sharedWriters.getSampleDataWriters().get() );
            }
            if ( sharedWriters.hasSharedBaselineSampleWriters() )
            {
                resources.addAll( sharedWriters.getBaselineSampleDataWriters().get() );
            }

            return Pair.of( Collections.unmodifiableSet( resources ), projectHash );
        }
        // Allow a user-error to be distinguished separately
        catch ( ProjectConfigException userError )
        {
            LOGGER.debug( "Forcibly stopping evaluation {} upon encountering a user error.", evaluationId );

            // Stop forcibly
            evaluation.stop( userError );

            throw userError;
        }
        // Internal error
        catch ( RuntimeException internalError )
        {
            if ( Objects.nonNull( evaluation ) )
            {
                // Stop forcibly
                LOGGER.debug( "Forcibly stopping evaluation {} upon encountering an internal error.", evaluationId );

                evaluation.stop( internalError );
            }

            // Decorate and rethrow
            throw new WresProcessingException( "Encountered an error while processing evaluation '"
                                               + evaluationId
                                               + "': ",
                                               internalError );
        }
        finally
        {
            // Close the evaluation always (even if stopped on exception)
            try
            {
                if ( Objects.nonNull( evaluation ) )
                {
                    evaluation.close();
                }
            }
            catch ( IOException e )
            {
                String message = "Failed to close evaluation " + evaluationId + ".";
                LOGGER.warn( message, e );
            }

            // Close the netCDF writers if not closed
            for ( NetcdfOutputWriter writer : netcdfWriters )
            {
                try
                {
                    writer.close();
                }
                catch ( WriteException we )
                {
                    LOGGER.warn( "Failed to close a netcdf writer.", we );
                }
            }

            // Add the paths written by external subscribers
            if ( Objects.nonNull( evaluation ) )
            {
                resources.addAll( evaluation.getPathsWrittenBySubscribers() );
            }

            // Clean-up an empty output directory: #67088
            try ( Stream<Path> outputs = Files.list( outputDirectory ) )
            {
                if ( outputs.count() == 0 )
                {
                    // Will only succeed for an empty directory
                    boolean status = Files.deleteIfExists( outputDirectory );

                    LOGGER.debug( "Attempted to remove empty output directory {} with success status: {}",
                                  outputDirectory,
                                  status );
                }
            }

            LOGGER.info( "Wrote the following output: {}", resources );
        }
    }

    /**
     * Processes a {@link ProjectConfigPlus} using a prescribed {@link ExecutorService} for each of the pairs, 
     * thresholds and metrics.
     *
     * Assumes that a shared lock for evaluation has already been obtained.
     * @param evaluationDetails the evaluation details
     * @param systemSettings the system settings
     * @param databaseServices the database services
     * @param executors the executors
     * @param netcdfWriters netCDF writers
     * @param sharedWriters for writing
     * @param outputDirectory the output directory
     * @throws WresProcessingException if the processing failed for any reason
     * @return the evaluation and the hash of the project data
     * @throws IOException if an attempt was made to close the evaluation and it failed
     */

    private static Pair<Evaluation, String> processProjectConfig( EvaluationDetails evaluationDetails,
                                                                  SystemSettings systemSettings,
                                                                  DatabaseServices databaseServices,
                                                                  Executors executors,
                                                                  SharedWriters sharedWriters,
                                                                  List<NetcdfOutputWriter> netcdfWriters,
                                                                  Path outputDirectory )
            throws IOException
    {
        Evaluation evaluation = null;
        String projectHash = null;
        try
        {
            ProjectConfigPlus projectConfigPlus = evaluationDetails.getProjectConfigPlus();
            ProjectConfig projectConfig = projectConfigPlus.getProjectConfig();
            ProgressMonitor.setShowStepDescription( false );
            ProgressMonitor.resetMonitor();

            // Look up any needed feature correlations, generate a new declaration.
            ProjectConfig featurefulProjectConfig = FeatureFinder.fillFeatures( projectConfig );
            LOGGER.debug( "Filled out features for project. Before: {} After: {}",
                          projectConfig,
                          featurefulProjectConfig );

            LOGGER.debug( "Beginning ingest for project {}...", projectConfigPlus );

            // Need to ingest first
            Project project = Operations.ingest( systemSettings,
                                                 databaseServices.getDatabase(),
                                                 executors.getIoExecutor(),
                                                 featurefulProjectConfig,
                                                 databaseServices.getDatabaseLockManager() );

            LOGGER.debug( "Finished ingest for project {}...", projectConfigPlus );

            Operations.prepareForExecution( project );

            evaluationDetails.setProject( project );
            projectHash = project.getHash();

            // Get a unit mapper for the declared or analyzed measurement units
            String desiredMeasurementUnit = project.getMeasurementUnit();
            MeasurementUnits measurementUnitsCache =
                    new MeasurementUnits( databaseServices.getDatabase() );
            UnitMapper unitMapper = UnitMapper.of( measurementUnitsCache,
                                                   desiredMeasurementUnit,
                                                   projectConfig );
            // Update the evaluation description with any analyzed units and variable names
            wres.statistics.generated.Evaluation evaluationDescription =
                    ProcessorHelper.setAnalyzedUnitsAndVariableNames( evaluationDetails.getEvaluationDescription(),
                                                                      desiredMeasurementUnit,
                                                                      project );

            // Build the evaluation. In future, there may be a desire to build the evaluation prior to ingest, in order 
            // to message the status of ingest. In order to build an evaluation before ingest, those parts of the 
            // evaluation description that depend on the data would need to be part of the pool description instead 
            // (e.g., the measurement units). Indeed, the time scale is part of the pool description for this reason.
            evaluation = Evaluation.of( evaluationDescription,
                                        evaluationDetails.getBrokerConnections(),
                                        ProcessorHelper.CLIENT_ID,
                                        evaluationDetails.getEvaluationId(),
                                        evaluationDetails.getSubscriberApprover() );
            evaluationDetails.setEvaluation( evaluation );

            ProgressMonitor.setShowStepDescription( false );

            // Acquire the individual feature tuples to correlate with thresholds
            Set<FeatureTuple> features = project.getFeatures();

            // Read external thresholds from the configuration, per feature
            List<ThresholdsByMetricAndFeature> thresholdsByMetricAndFeature = new ArrayList<>();
            Set<FeatureTuple> featuresWithExplicitThresholds = new TreeSet<>();
            for ( MetricsConfig metricsConfig : projectConfig.getMetrics() )
            {
                ThresholdReader thresholdReader = new ThresholdReader(
                                                                       systemSettings,
                                                                       projectConfig,
                                                                       metricsConfig,
                                                                       unitMapper,
                                                                       features );

                Map<FeatureTuple, ThresholdsByMetric> nextThresholds = thresholdReader.read();
                Set<FeatureTuple> innerFeaturesWithExplicitThresholds = thresholdReader.getEvaluatableFeatures();

                int minimumSampleSize = ProcessorHelper.getMinimumSampleSize( metricsConfig.getMinimumSampleSize() );
                ThresholdsByMetricAndFeature nextMetrics = ThresholdsByMetricAndFeature.of( nextThresholds,
                                                                                            minimumSampleSize );
                thresholdsByMetricAndFeature.add( nextMetrics );
                featuresWithExplicitThresholds.addAll( innerFeaturesWithExplicitThresholds );
            }

            // Render the bags of thresholds and features immutable
            thresholdsByMetricAndFeature = Collections.unmodifiableList( thresholdsByMetricAndFeature );
            featuresWithExplicitThresholds = Collections.unmodifiableSet( featuresWithExplicitThresholds );

            // Create the feature groups
            Set<FeatureGroup> featureGroups = ProcessorHelper.getFeatureGroups( project,
                                                                                featuresWithExplicitThresholds );

            // Create any netcdf blobs for writing. See #80267-137.
            if ( !netcdfWriters.isEmpty() )
            {
                for ( NetcdfOutputWriter writer : netcdfWriters )
                {
                    writer.createBlobsForWriting( featureGroups,
                                                  thresholdsByMetricAndFeature );
                }
            }

            // The project code - ideally project hash
            String projectIdentifier = project.getHash();

            ResolvedProject resolvedProject = ResolvedProject.of( projectConfigPlus,
                                                                  projectIdentifier,
                                                                  thresholdsByMetricAndFeature,
                                                                  outputDirectory );
            evaluationDetails.setResolvedProject( resolvedProject );

            // Tasks for features
            List<CompletableFuture<Void>> featureTasks = new ArrayList<>();

            // Report on the completion state of all features
            // Report detailed state by default (final arg = true)
            // TODO: demote to summary report (final arg = false) for >> feature count
            FeatureReporter featureReport = new FeatureReporter( projectConfigPlus, featureGroups.size(), true );

            // Deactivate progress monitoring within features, as features are processed asynchronously - the internal
            // completion state of features has no value when reported in this way
            ProgressMonitor.deactivate();

            // Create one task per feature group
            for ( FeatureGroup nextGroup : featureGroups )
            {
                // Create feature-shaped pool requests
                List<PoolRequest> poolRequests =
                        PoolFactory.getPoolRequests( evaluationDetails.getEvaluationDescription(),
                                                     projectConfig,
                                                     nextGroup );

                Supplier<FeatureProcessingResult> featureProcessor = new FeatureProcessor( evaluationDetails,
                                                                                           nextGroup,
                                                                                           poolRequests,
                                                                                           unitMapper,
                                                                                           executors,
                                                                                           sharedWriters );

                CompletableFuture<Void> nextFeatureTask = CompletableFuture.supplyAsync( featureProcessor,
                                                                                         executors.getFeatureExecutor() )
                                                                           .thenAccept( featureReport );

                // Add to list of tasks
                featureTasks.add( nextFeatureTask );
            }

            // Run the tasks, and join on all tasks. The main thread will wait until all are completed successfully
            // or one completes exceptionally for reasons other than lack of data
            // Complete the feature tasks
            Pipelines.doAllOrException( featureTasks ).join();

            // Report that all publication was completed. At this stage, a message is sent indicating the expected 
            // message count for all message types, thereby allowing consumers to know when they are done/
            evaluation.markPublicationCompleteReportedSuccess();

            // Report on the features
            featureReport.report();

            // Return an evaluation that was opened
            return Pair.of( evaluation, projectHash );
        }
        catch ( IOException | SQLException | RuntimeException internalError )
        {
            if ( Objects.nonNull( evaluation ) )
            {
                LOGGER.debug( "Forcibly stopping evaluation {} upon encountering an internal error.",
                              evaluation.getEvaluationId() );

                evaluation.stop( internalError );
            }

            throw new WresProcessingException( "Project failed to complete with the following error: ", internalError );
        }
        // Close an evaluation that failed
        finally
        {
            if ( Objects.nonNull( evaluation ) && evaluation.isFailed() )
            {
                evaluation.close();
            }
        }
    }

    /**
     * Returns an instance of {@link SharedWriters} for shared writing.
     *
     * @param projectConfig the project declaration
     * @param outputDirectory the output directory for writing
     * @return the shared writer instance
     */

    private static SharedWriters getSharedWriters( ProjectConfig projectConfig,
                                                   Path outputDirectory )
    {
        // Obtain the duration units for outputs: #55441
        String durationUnitsString = projectConfig.getOutputs()
                                                  .getDurationFormat()
                                                  .value()
                                                  .toUpperCase();
        ChronoUnit durationUnits = ChronoUnit.valueOf( durationUnitsString );

        SharedSampleDataWriters sharedSampleWriters = null;
        SharedSampleDataWriters sharedBaselineSampleWriters = null;

        // If there are multiple destinations for pairs, ignore these. The system chooses the destination.
        // Writing the same pairs, more than once, to that single destination does not make sense.
        // See #55948-12 and #55948-13. Ultimate solution is to improve the schema to prevent multiple occurrences.
        List<DestinationConfig> pairDestinations = ProjectConfigs.getDestinationsOfType( projectConfig,
                                                                                         DestinationType.PAIRS );
        if ( !pairDestinations.isEmpty() )
        {
            DecimalFormat decimalFormatter = null;
            if ( Objects.nonNull( pairDestinations.get( 0 ).getDecimalFormat() ) )
            {
                decimalFormatter = ConfigHelper.getDecimalFormatter( pairDestinations.get( 0 ) );
            }

            sharedSampleWriters =
                    SharedSampleDataWriters.of( Paths.get( outputDirectory.toString(), PairsWriter.DEFAULT_PAIRS_NAME ),
                                                durationUnits,
                                                decimalFormatter );
            // Baseline writer?
            if ( Objects.nonNull( projectConfig.getInputs().getBaseline() ) )
            {
                sharedBaselineSampleWriters = SharedSampleDataWriters.of( Paths.get( outputDirectory.toString(),
                                                                                     PairsWriter.DEFAULT_BASELINE_PAIRS_NAME ),
                                                                          durationUnits,
                                                                          decimalFormatter );
            }
        }

        return SharedWriters.of( sharedSampleWriters,
                                 sharedBaselineSampleWriters );
    }


    /**
     * Get the netCDF writers requested by this project declaration.
     *
     * @param projectConfig The declaration.
     * @param systemSettings The system settings.
     * @param executor The executor to pass to NetcdfOutputWriters.
     * @param outputDirectory The output directory into which to write.
     * @return A list of netCDF writers, zero to two.
     */

    private static List<NetcdfOutputWriter> getNetcdfWriters( ProjectConfig projectConfig,
                                                              SystemSettings systemSettings,
                                                              Executor executor,
                                                              Path outputDirectory )
    {
        List<NetcdfOutputWriter> writers = new ArrayList<>( 2 );

        // Obtain the duration units for outputs: #55441
        String durationUnitsString = projectConfig.getOutputs()
                                                  .getDurationFormat()
                                                  .value()
                                                  .toUpperCase();
        ChronoUnit durationUnits = ChronoUnit.valueOf( durationUnitsString );

        DestinationConfig firstDeprecatedNetcdf = null;
        DestinationConfig firstNetcdf2 = null;

        for ( DestinationConfig destination : projectConfig.getOutputs()
                                                           .getDestination() )
        {
            if ( destination.getType()
                            .equals( DestinationType.NETCDF )
                 && Objects.isNull( firstDeprecatedNetcdf ) )
            {
                firstDeprecatedNetcdf = destination;
            }

            if ( destination.getType()
                            .equals( DestinationType.NETCDF_2 )
                 && Objects.isNull( firstNetcdf2 ) )
            {
                firstNetcdf2 = destination;
            }
        }

        if ( Objects.nonNull( firstDeprecatedNetcdf ) )
        {
            // Use the template-based netcdf writer.
            NetcdfOutputWriter netcdfWriterDeprecated = NetcdfOutputWriter.of(
                                                                               systemSettings,
                                                                               executor,
                                                                               projectConfig,
                                                                               firstDeprecatedNetcdf,
                                                                               durationUnits,
                                                                               outputDirectory,
                                                                               true );
            writers.add( netcdfWriterDeprecated );
            LOGGER.warn( "Added a deprecated netcdf writer for statistics to the evaluation. Please update your declaration to use the newer netCDF output." );
        }

        if ( Objects.nonNull( firstNetcdf2 ) )
        {
            // Use the newer from-scratch netcdf writer.
            NetcdfOutputWriter netcdfWriter = NetcdfOutputWriter.of(
                                                                     systemSettings,
                                                                     executor,
                                                                     projectConfig,
                                                                     firstNetcdf2,
                                                                     durationUnits,
                                                                     outputDirectory,
                                                                     false );
            writers.add( netcdfWriter );
            LOGGER.debug( "Added a shared netcdf writer for statistics to the evaluation." );
        }

        return Collections.unmodifiableList( writers );
    }

    /**
     * Creates a temporary directory for the outputs with the correct permissions. 
     *
     * @param evaluationId the unique evaluation identifier
     * @return the path to the temporary output directory
     * @throws IOException if the temporary directory cannot be created     
     * @throws NullPointerException if the evaluationId is null 
     */

    private static Path createTempOutputDirectory( String evaluationId ) throws IOException
    {
        Objects.requireNonNull( evaluationId );

        // Where outputs files will be written
        Path outputDirectory = null;
        String tempDir = System.getProperty( "java.io.tmpdir" );

        // Is this instance running in a context that uses a wres job identifier?
        // If so, create a directory corresponding to the job identifier. See #84942.
        String jobId = System.getProperty( "wres.jobId" );
        if ( Objects.nonNull( jobId ) )
        {
            LOGGER.debug( "Discovered system property {} with value {}.", "wres.jobId", jobId );
            tempDir = tempDir + System.getProperty( "file.separator" ) + jobId;
        }

        Path namedPath = Paths.get( tempDir, "wres_evaluation_" + evaluationId );

        // POSIX-compliant    
        if ( FileSystems.getDefault().supportedFileAttributeViews().contains( "posix" ) )
        {
            Set<PosixFilePermission> permissions = EnumSet.of( PosixFilePermission.OWNER_READ,
                                                               PosixFilePermission.OWNER_WRITE,
                                                               PosixFilePermission.OWNER_EXECUTE,
                                                               PosixFilePermission.GROUP_READ,
                                                               PosixFilePermission.GROUP_WRITE,
                                                               PosixFilePermission.GROUP_EXECUTE );

            FileAttribute<Set<PosixFilePermission>> fileAttribute =
                    PosixFilePermissions.asFileAttribute( permissions );

            // Create if not exists
            outputDirectory = Files.createDirectories( namedPath, fileAttribute );
        }
        // Not POSIX-compliant
        else
        {
            outputDirectory = Files.createDirectories( namedPath );
        }

        if ( !outputDirectory.isAbsolute() )
        {
            return outputDirectory.toAbsolutePath();
        }

        return outputDirectory;
    }

    /**
     * A value object that a) reduces count of args for some methods and
     * b) provides names for those objects. Can be removed if we can reduce the
     * count of dependencies in some of our methods, or if we prefer to see all
     * dependencies clearly laid out in the method signature.
     */

    static class Executors
    {

        /**
         * Executor for input/output operations, such as ingest.
         */

        private final Executor ioExecutor;

        /**
         * The feature executor.
         */
        private final ExecutorService featureExecutor;

        /**
         * The pair executor.
         */
        private final ExecutorService pairExecutor;

        /**
         * The threshold executor.
         */
        private final ExecutorService thresholdExecutor;

        /**
         * The metric executor.
         */
        private final ExecutorService metricExecutor;

        /**
         * The product executor.
         */
        private final ExecutorService productExecutor;

        /**
         * Build. 
         * 
         * @param ioExecutor the executor for io operations
         * @param featureExecutor the feature executor
         * @param pairExecutor the pair executor
         * @param thresholdExecutor the threshold executor
         * @param metricExecutor the metric executor
         * @param productExecutor the product executor
         */
        Executors( Executor ioExecutor,
                   ExecutorService featureExecutor,
                   ExecutorService pairExecutor,
                   ExecutorService thresholdExecutor,
                   ExecutorService metricExecutor,
                   ExecutorService productExecutor )
        {
            this.ioExecutor = ioExecutor;
            this.featureExecutor = featureExecutor;
            this.pairExecutor = pairExecutor;
            this.thresholdExecutor = thresholdExecutor;
            this.metricExecutor = metricExecutor;
            this.productExecutor = productExecutor;
        }

        /**
         * Returns the {@link ExecutorService} for features.
         * @return the metric executor
         */

        ExecutorService getFeatureExecutor()
        {
            return this.featureExecutor;
        }

        /**
         * Returns the {@link ExecutorService} for pairs.
         * @return the pair executor
         */

        ExecutorService getPairExecutor()
        {
            return this.pairExecutor;
        }

        /**
         * Returns the {@link ExecutorService} for thresholds.
         * @return the threshold executor
         */

        ExecutorService getThresholdExecutor()
        {
            return this.thresholdExecutor;
        }

        /**
         * Returns the {@link ExecutorService} for metrics.
         * @return the metric executor
         */

        ExecutorService getMetricExecutor()
        {
            return this.metricExecutor;
        }

        /**
         * Returns the {@link ExecutorService} for products.
         * @return the product executor
         */

        ExecutorService getProductExecutor()
        {
            return this.productExecutor;
        }

        /**
         * Returns the {@link Executor} for io operations.
         * @return the io executor
         */

        Executor getIoExecutor()
        {
            return this.ioExecutor;
        }

    }

    /**
     * A value object for shared writers.
     */

    static class SharedWriters implements Closeable
    {
        /**
         * Shared writers for sample data.
         */

        private final SharedSampleDataWriters sharedSampleWriters;

        /**
         * Shared writers for baseline sampled data.
         */

        private final SharedSampleDataWriters sharedBaselineSampleWriters;

        /**
         * Returns an instance.
         *
         * @param sharedSampleWriters shared writer of pairs
         * @param sharedBaselineSampleWriters shared writer of baseline pairs
         */
        static SharedWriters of( SharedSampleDataWriters sharedSampleWriters,
                                 SharedSampleDataWriters sharedBaselineSampleWriters )

        {
            return new SharedWriters( sharedSampleWriters, sharedBaselineSampleWriters );
        }

        /**
         * Returns the shared sample data writers.
         * 
         * @return the shared sample data writers.
         */

        SharedSampleDataWriters getSampleDataWriters()
        {
            return this.sharedSampleWriters;
        }

        /**
         * Returns the shared sample data writers for baseline data.
         * 
         * @return the shared sample data writers  for baseline data.
         */

        SharedSampleDataWriters getBaselineSampleDataWriters()
        {
            return this.sharedBaselineSampleWriters;
        }

        /**
         * Returns <code>true</code> if shared sample writers are available, otherwise <code>false</code>.
         * 
         * @return true if shared sample writers are available
         */

        boolean hasSharedSampleWriters()
        {
            return Objects.nonNull( this.sharedSampleWriters );
        }

        /**
         * Returns <code>true</code> if shared sample writers are available for the baseline samples, otherwise 
         * <code>false</code>.
         * 
         * @return true if shared sample writers are available for the baseline samples
         */

        boolean hasSharedBaselineSampleWriters()
        {
            return Objects.nonNull( this.sharedBaselineSampleWriters );
        }

        /**
         * Attempts to close all shared writers.
         * @throws IOException when a resource could not be closed
         */

        public void close() throws IOException
        {
            if ( this.hasSharedSampleWriters() )
            {
                this.getSampleDataWriters().close();
            }

            if ( this.hasSharedBaselineSampleWriters() )
            {
                this.getBaselineSampleDataWriters().close();
            }
        }

        /**
         * Hidden constructor.
         * @param sharedSampleWriters the shared writer for pairs
         * @param sharedBaselineSampleWriters the shared writer for baseline pairs
         */
        private SharedWriters( SharedSampleDataWriters sharedSampleWriters,
                               SharedSampleDataWriters sharedBaselineSampleWriters )
        {
            this.sharedSampleWriters = sharedSampleWriters;
            this.sharedBaselineSampleWriters = sharedBaselineSampleWriters;
        }
    }

    /**
     * Returns a set of formats that are delivered by external subscribers, according to relevant system properties.
     * 
     * @return the formats delivered by external subscribers
     */

    private static Set<Format> getFormatsDeliveredByExternalSubscribers()
    {
        String externalGraphics = System.getProperty( "wres.externalGraphics" );

        Set<Format> formats = new HashSet<>();

        // Add external graphics if required
        if ( Objects.nonNull( externalGraphics ) && "true".equalsIgnoreCase( externalGraphics ) )
        {
            formats.add( Format.PNG );
            formats.add( Format.SVG );
        }

        return Collections.unmodifiableSet( formats );
    }

    /**
     * @param projectConfigPlus the project declaration with graphics information
     * @return a description of the evaluation.
     * @deprecated for removal as templates should not be configurable
     */

    @Deprecated( since = "5.0", forRemoval = true )
    private static wres.statistics.generated.Evaluation getEvaluationDescription( ProjectConfigPlus projectConfigPlus )
    {
        wres.statistics.generated.Evaluation returnMe = MessageFactory.parse( projectConfigPlus );

        Outputs outputs = returnMe.getOutputs();

        if ( outputs.hasPng() && outputs.getPng().hasOptions() )
        {
            String template = outputs.getPng().getOptions().getTemplateName();

            template = ProcessorHelper.getAbsolutePathFromRelativePath( template );

            Outputs.Builder builder = outputs.toBuilder();
            builder.getPngBuilder()
                   .getOptionsBuilder()
                   .setTemplateName( template );
            returnMe = returnMe.toBuilder()
                               .setOutputs( builder )
                               .build();
        }

        if ( outputs.hasSvg() && outputs.getSvg().hasOptions() )
        {
            String template = outputs.getSvg().getOptions().getTemplateName();

            template = ProcessorHelper.getAbsolutePathFromRelativePath( template );

            Outputs.Builder builder = outputs.toBuilder();
            builder.getSvgBuilder()
                   .getOptionsBuilder()
                   .setTemplateName( template );
            returnMe = returnMe.toBuilder()
                               .setOutputs( builder )
                               .build();
        }

        return returnMe;
    }

    /**
     * @return an absolute path string from a relative one.
     */

    private static String getAbsolutePathFromRelativePath( String pathString )
    {
        if ( Objects.isNull( pathString ) || pathString.isBlank() )
        {
            return pathString;
        }

        Path path = Path.of( pathString );

        if ( !path.isAbsolute() )
        {
            return path.toAbsolutePath().toString();
        }

        return pathString;
    }

    /**
     * @param project the project
     * @param featuresWithExplicitThresholds features with explicit thresholds (not the implicit "all data" threshold)
     * @return the feature groups
     */

    private static Set<FeatureGroup> getFeatureGroups( Project project,
                                                       Set<FeatureTuple> featuresWithExplicitThresholds )
    {
        Objects.requireNonNull( project );
        Objects.requireNonNull( featuresWithExplicitThresholds );

        // Get the baseline groups in a sorted set
        Set<FeatureGroup> featureGroups = new TreeSet<>( project.getFeatureGroups() );

        // Log a warning about any discrepancies between features with thresholds and features to evaluate
        if ( LOGGER.isWarnEnabled() )
        {
            Map<String, Set<String>> missing = new HashMap<>();

            // Check that every group has one or more thresholds for every tuple, else warn
            for ( FeatureGroup nextGroup : featureGroups )
            {
                if ( nextGroup.getFeatures().size() > 1
                     && !featuresWithExplicitThresholds.containsAll( nextGroup.getFeatures() ) )
                {
                    Set<FeatureTuple> missingFeatures = new HashSet<>();
                    missingFeatures.addAll( nextGroup.getFeatures() );
                    missingFeatures.removeAll( featuresWithExplicitThresholds );

                    // Show abbreviated information only
                    missing.put( nextGroup.getName(),
                                 missingFeatures.stream()
                                                .map( FeatureTuple::toStringShort )
                                                .collect( Collectors.toSet() ) );
                }
            }

            // Warn about groups without thresholds, which will be skipped
            if ( !missing.isEmpty() )
            {
                LOGGER.warn( "While correlating thresholds with the features contained in feature groups, "
                             + "discovered {} feature groups that did not have thresholds for every feature within the "
                             + "group. These groups will be evaluated, but the grouped statistics will not include the "
                             + "pairs associated with the features that have missing thresholds. By default, the \"all "
                             + "data\" threshold is added to every feature and the statistics for this threshold will "
                             + "not be impacted. The features with missing thresholds and their associated feature "
                             + "groups are: {}.",
                             missing.size(),
                             missing );
            }
        }

        return Collections.unmodifiableSet( featureGroups );
    }

    /**
     * Obtain the minimum sample size from a possible null input. If null, return zero.
     * 
     * @param minimumSampleSize the minimum sample size, which is nullable and defaults to zero
     */
    private static int getMinimumSampleSize( Integer minimumSampleSize )
    {
        // Defaults to zero
        if ( Objects.isNull( minimumSampleSize ) )
        {
            LOGGER.debug( "Setting the minimum sample size to zero. " );
            return 0;
        }
        else
        {
            return minimumSampleSize;
        }
    }

    /**
     * Small value class to collect together variables needed to instantiate an evaluation.
     */

    static class EvaluationDetails
    {
        /** Project configuration. */
        private final ProjectConfigPlus projectConfigPlus;
        /** Evaluation description. */
        private final wres.statistics.generated.Evaluation evaluationDescription;
        /** Unique evaluation identifier. */
        private final String evaluationId;
        /** Approves format writer subscriptions that attempt to serve an evaluation. */
        private final SubscriberApprover subscriberApprover;
        /** Broker connections. */
        private final BrokerConnectionFactory connections;
        /** Monitor. */
        private final EvaluationEvent monitor;
        /** The project, possibly null. */
        private Project project;
        /** The resolved project, possibly null. */
        private ResolvedProject resolvedProject;
        /** The messaging component of an evaluation, possibly null. */
        private Evaluation evaluation;

        /**
         * @return the project configuration
         */
        ProjectConfigPlus getProjectConfigPlus()
        {
            return projectConfigPlus;
        }

        /**
         * @return the evaluation description
         */
        wres.statistics.generated.Evaluation getEvaluationDescription()
        {
            return evaluationDescription;
        }

        /**
         * @return the evaluation identifier
         */
        String getEvaluationId()
        {
            return evaluationId;
        }

        /**
         * @return the subscriber approver
         */
        SubscriberApprover getSubscriberApprover()
        {
            return subscriberApprover;
        }

        /**
         * @return the broker connection factory
         */
        BrokerConnectionFactory getBrokerConnections()
        {
            return connections;
        }

        /**
         * @return the monitor
         */

        EvaluationEvent getMonitor()
        {
            return this.monitor;
        }

        /**
         * @return the project, possibly null
         */

        Project getProject()
        {
            return this.project;
        }

        /**
         * @return the resolvedProject, possibly null
         */

        ResolvedProject getResolvedProject()
        {
            return this.resolvedProject;
        }

        /**
         * @return the evaluation, possibly null
         */

        Evaluation getEvaluation()
        {
            return this.evaluation;
        }

        /**
         * Set the project, not null.
         * @param project the project
         * @throws NullPointerException if the project is null
         */

        void setProject( Project project )
        {
            Objects.requireNonNull( project );

            this.project = project;
        }

        /**
         * Set the resolved project, not null.
         * @param resolvedProject the resolved project
         * @throws NullPointerException if the resolvedProject is null
         */

        void setResolvedProject( ResolvedProject resolvedProject )
        {
            Objects.requireNonNull( resolvedProject );

            this.resolvedProject = resolvedProject;
        }

        /**
         * Set the evaluation, not null.
         * @param evaluation the evaluation
         * @throws NullPointerException if the evaluation is null
         */

        void setEvaluation( Evaluation evaluation )
        {
            Objects.requireNonNull( evaluation );

            this.evaluation = evaluation;
        }

        /**
         * Builds an instance.
         * 
         * @param projectConfigPlus the project declaration
         * @param evaluationDescription the evaluation description
         * @param evaluationId the evaluation identifier
         * @param subscriberApprover the subscriber approver
         * @param connections the broker connections
         */

        EvaluationDetails( ProjectConfigPlus projectConfigPlus,
                           wres.statistics.generated.Evaluation evaluationDescription,
                           String evaluationId,
                           SubscriberApprover subscriberApprover,
                           BrokerConnectionFactory connections,
                           EvaluationEvent monitor )
        {
            this.projectConfigPlus = projectConfigPlus;
            this.evaluationDescription = evaluationDescription;
            this.evaluationId = evaluationId;
            this.subscriberApprover = subscriberApprover;
            this.connections = connections;
            this.monitor = monitor;
        }
    }

    /**
     * @param evaluation the evaluation description
     * @param desiredMeasurementUnit the desired measurement units
     * @param project the project
     * @return an evaluation description with analyzed measurement units and variables, as needed
     */

    private static wres.statistics.generated.Evaluation
            setAnalyzedUnitsAndVariableNames( wres.statistics.generated.Evaluation evaluation,
                                              String desiredMeasurementUnit,
                                              Project project )
    {
        wres.statistics.generated.Evaluation.Builder builder = evaluation.toBuilder()
                                                                         .setMeasurementUnit( desiredMeasurementUnit );

        // Only set the names with analyzed names if the existing names are empty
        if ( "".equals( evaluation.getLeftVariableName() ) )
        {
            builder.setLeftVariableName( project.getLeftVariableName() );
        }
        if ( "".equals( evaluation.getRightVariableName() ) )
        {
            builder.setLeftVariableName( project.getRightVariableName() );
        }
        if ( project.hasBaseline() && "".equals( evaluation.getBaselineVariableName() ) )
        {
            builder.setBaselineVariableName( project.getBaselineVariableName() );
        }

        return builder.build();
    }

    private ProcessorHelper()
    {
        // Helper class with static methods therefore no construction allowed.
    }
}