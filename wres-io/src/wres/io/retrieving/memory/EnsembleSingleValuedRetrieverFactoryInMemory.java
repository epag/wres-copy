package wres.io.retrieving.memory;

import java.util.Objects;
import java.util.Set;
import java.util.function.Supplier;
import java.util.stream.Stream;

import wres.config.yaml.components.DataType;
import wres.config.yaml.components.Dataset;
import wres.config.yaml.components.DatasetOrientation;
import wres.datamodel.Ensemble;
import wres.datamodel.space.Feature;
import wres.datamodel.time.TimeSeries;
import wres.datamodel.time.TimeSeriesSlicer;
import wres.datamodel.time.TimeSeriesStore;
import wres.datamodel.time.TimeWindowOuter;
import wres.io.project.Project;
import wres.io.retrieving.CachingRetriever;
import wres.io.retrieving.DuplicatePolicy;
import wres.io.retrieving.RetrieverFactory;
import wres.io.retrieving.RetrieverUtilities;
import wres.statistics.MessageFactory;
import wres.statistics.generated.TimeWindow;

/**
 * <p>A factory class that creates retrievers for single-valued left datasets, ensemble right datasets and
 * single-valued baseline datasets associated with one evaluation. Backed by an in-memory {@link TimeSeriesStore}.
 *
 * @author James Brown
 */

public class EnsembleSingleValuedRetrieverFactoryInMemory implements RetrieverFactory<Double, Ensemble, Double>
{
    /** A time-series store. */
    private final TimeSeriesStore timeSeriesStore;

    /** The project. */
    private final Project project;

    /**
     * Returns an instance.
     *
     * @param project the project
     * @param timeSeriesStore the store of time-series
     * @return a factory instance
     * @throws NullPointerException if any input is null
     */

    public static EnsembleSingleValuedRetrieverFactoryInMemory of( Project project,
                                                                   TimeSeriesStore timeSeriesStore )
    {
        return new EnsembleSingleValuedRetrieverFactoryInMemory( project, timeSeriesStore );
    }

    @Override
    public Supplier<Stream<TimeSeries<Double>>> getClimatologyRetriever( Set<Feature> features )
    {
        // No distinction between climatology and left for now
        return this.getLeftRetriever( features );
    }

    @Override
    public Supplier<Stream<TimeSeries<Double>>> getLeftRetriever( Set<Feature> features )
    {
        Stream<TimeSeries<Double>> originalSeries =
                this.timeSeriesStore.getSingleValuedSeries( DatasetOrientation.LEFT,
                                                            features );

        Stream<TimeSeries<Double>> adaptedTimeSeries = this.getAdaptedTimeSeries( DatasetOrientation.LEFT,
                                                                                  originalSeries,
                                                                                  null );
        // Wrap in a caching retriever
        return CachingRetriever.of( () -> adaptedTimeSeries.map( timeSeries ->
                                                                         RetrieverUtilities.augmentTimeScale( timeSeries,
                                                                                                              DatasetOrientation.LEFT,
                                                                                                              this.project.getDeclaredDataset(
                                                                                                                      DatasetOrientation.LEFT ) ) ) );
    }

    @Override
    public Supplier<Stream<TimeSeries<Double>>> getLeftRetriever( Set<Feature> features,
                                                                  TimeWindowOuter timeWindow )
    {
        // Consider all possible lead durations
        com.google.protobuf.Duration lower =
                com.google.protobuf.Duration.newBuilder()
                                            .setSeconds( TimeWindowOuter.DURATION_MIN.getSeconds() )
                                            .setNanos( TimeWindowOuter.DURATION_MIN.getNano() )
                                            .build();

        com.google.protobuf.Duration upper =
                com.google.protobuf.Duration.newBuilder()
                                            .setSeconds( TimeWindowOuter.DURATION_MAX.getSeconds() )
                                            .setNanos( TimeWindowOuter.DURATION_MAX.getNano() )
                                            .build();

        TimeWindow inner = timeWindow.getTimeWindow()
                                     .toBuilder()
                                     .setEarliestLeadDuration( lower )
                                     .setLatestLeadDuration( upper )
                                     .build();

        TimeWindowOuter adjustedWindow = TimeSeriesSlicer.adjustByTimeScalePeriod( TimeWindowOuter.of( inner ),
                                                                                   this.project.getDesiredTimeScale() );

        Dataset data = this.project.getDeclaredDataset( DatasetOrientation.LEFT );
        adjustedWindow = RetrieverUtilities.adjustForAnalysisTypeIfRequired( adjustedWindow,
                                                                             data.type(),
                                                                             this.project.getEarliestAnalysisDuration(),
                                                                             this.project.getLatestAnalysisDuration() );

        Stream<TimeSeries<Double>> originalSeries =
                this.timeSeriesStore.getSingleValuedSeries( adjustedWindow,
                                                            DatasetOrientation.LEFT,
                                                            features );

        Stream<TimeSeries<Double>> adaptedTimeSeries = this.getAdaptedTimeSeries( DatasetOrientation.LEFT,
                                                                                  originalSeries,
                                                                                  adjustedWindow );

        // Wrap in a caching retriever to allow re-use of left-ish data
        return CachingRetriever.of( () -> adaptedTimeSeries.map( timeSeries -> RetrieverUtilities.augmentTimeScale(
                timeSeries,
                DatasetOrientation.LEFT,
                data ) ) );
    }

    @Override
    public Supplier<Stream<TimeSeries<Ensemble>>> getRightRetriever( Set<Feature> features,
                                                                     TimeWindowOuter timeWindow )
    {
        TimeWindowOuter adjustedWindow = TimeSeriesSlicer.adjustByTimeScalePeriod( timeWindow,
                                                                                   this.project.getDesiredTimeScale() );

        Dataset data = this.project.getDeclaredDataset( DatasetOrientation.RIGHT );
        adjustedWindow = RetrieverUtilities.adjustForAnalysisTypeIfRequired( adjustedWindow,
                                                                             data.type(),
                                                                             this.project.getEarliestAnalysisDuration(),
                                                                             this.project.getLatestAnalysisDuration() );

        Stream<TimeSeries<Ensemble>> originalSeries =
                this.timeSeriesStore.getEnsembleSeries( adjustedWindow,
                                                        DatasetOrientation.RIGHT,
                                                        features );

        Stream<TimeSeries<Ensemble>> adaptedTimeSeries = this.getAdaptedTimeSeries( DatasetOrientation.RIGHT,
                                                                                    originalSeries,
                                                                                    adjustedWindow );

        return () -> adaptedTimeSeries.map( timeSeries -> RetrieverUtilities.augmentTimeScale( timeSeries,
                                                                                               DatasetOrientation.RIGHT,
                                                                                               data ) );
    }

    @Override
    public Supplier<Stream<TimeSeries<Double>>> getBaselineRetriever( Set<Feature> features )
    {
        TimeWindow inner = MessageFactory.getTimeWindow();
        TimeWindowOuter outer = TimeWindowOuter.of( inner );
        return this.getBaselineRetriever( features, outer );
    }

    @Override
    public Supplier<Stream<TimeSeries<Double>>> getBaselineRetriever( Set<Feature> features,
                                                                      TimeWindowOuter timeWindow )
    {
        TimeWindowOuter adjustedWindow = TimeSeriesSlicer.adjustByTimeScalePeriod( timeWindow,
                                                                                   this.project.getDesiredTimeScale() );

        Dataset data = this.project.getDeclaredDataset( DatasetOrientation.BASELINE );
        adjustedWindow = RetrieverUtilities.adjustForAnalysisTypeIfRequired( adjustedWindow,
                                                                             data.type(),
                                                                             this.project.getEarliestAnalysisDuration(),
                                                                             this.project.getLatestAnalysisDuration() );

        Stream<TimeSeries<Double>> originalSeries =
                this.timeSeriesStore.getSingleValuedSeries( adjustedWindow,
                                                            DatasetOrientation.BASELINE,
                                                            features );

        Stream<TimeSeries<Double>> adaptedTimeSeries = this.getAdaptedTimeSeries( DatasetOrientation.BASELINE,
                                                                                  originalSeries,
                                                                                  adjustedWindow );

        return () -> adaptedTimeSeries.map( timeSeries -> RetrieverUtilities.augmentTimeScale( timeSeries,
                                                                                               DatasetOrientation.BASELINE,
                                                                                               data ) );
    }


    /**
     * @param <T> the time-series event value type
     * @param orientation the orientation
     * @param timeSeries the input time-series
     * @param timeWindow the time window, optional
     * @return the adapted time-series
     */

    private <T> Stream<TimeSeries<T>> getAdaptedTimeSeries( DatasetOrientation orientation,
                                                            Stream<TimeSeries<T>> timeSeries,
                                                            TimeWindowOuter timeWindow )
    {
        Stream<TimeSeries<T>> allSeries = timeSeries;

        // Analysis shape of evaluation?
        if ( this.project.getDeclaredDataset( orientation )
                         .type() == DataType.ANALYSES )
        {
            allSeries = RetrieverUtilities.createAnalysisTimeSeries( timeSeries,
                                                                     this.project.getEarliestAnalysisDuration(),
                                                                     this.project.getLatestAnalysisDuration(),
                                                                     DuplicatePolicy.KEEP_LATEST_REFERENCE_TIME,
                                                                     timeWindow );
        }

        return allSeries;
    }

    /**
     * Hidden constructor.
     *
     * @param project the project
     * @param timeSeriesStore the time-series store
     * @throws NullPointerException if any input is null
     */

    private EnsembleSingleValuedRetrieverFactoryInMemory( Project project,
                                                          TimeSeriesStore timeSeriesStore )
    {
        Objects.requireNonNull( project );
        Objects.requireNonNull( timeSeriesStore );

        this.timeSeriesStore = timeSeriesStore;
        this.project = project;
    }

}