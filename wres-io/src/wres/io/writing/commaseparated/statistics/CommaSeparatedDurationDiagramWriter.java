package wres.io.writing.commaseparated.statistics;

import java.io.IOException;
import java.nio.file.Path;
import java.text.Format;
import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringJoiner;
import java.util.function.Consumer;
import java.util.function.Supplier;

import org.apache.commons.lang3.tuple.Pair;

import wres.config.ProjectConfigException;
import wres.config.generated.DestinationConfig;
import wres.config.generated.LeftOrRightOrBaseline;
import wres.config.generated.ProjectConfig;
import wres.datamodel.MetricConstants;
import wres.datamodel.Slicer;
import wres.datamodel.sampledata.SampleMetadata;
import wres.datamodel.statistics.DurationDiagramStatisticOuter;
import wres.datamodel.thresholds.OneOrTwoThresholds;
import wres.io.config.ConfigHelper;
import wres.io.writing.WriterHelper;
import wres.io.writing.commaseparated.CommaSeparatedUtilities;

/**
 * Helps write paired output comprising {@link DurationDiagramStatisticOuter} to a file of Comma Separated Values (CSV).
 * 
 * @author james.brown@hydrosolved.com
 */

public class CommaSeparatedDurationDiagramWriter extends CommaSeparatedStatisticsWriter
        implements Consumer<List<DurationDiagramStatisticOuter>>, Supplier<Set<Path>>
{

    /**
     * Set of paths that this writer actually wrote to
     */

    private final Set<Path> pathsWrittenTo = new HashSet<>();

    /**
     * Returns an instance of a writer.
     * 
     * @param projectConfig the project configuration
     * @param durationUnits the time units for durations
     * @param outputDirectory the directory into which to write
     * @return a writer
     * @throws NullPointerException if either input is null 
     * @throws ProjectConfigException if the project configuration is not valid for writing
     */

    public static CommaSeparatedDurationDiagramWriter of( ProjectConfig projectConfig,
                                                          ChronoUnit durationUnits,
                                                          Path outputDirectory )
    {
        return new CommaSeparatedDurationDiagramWriter( projectConfig, durationUnits, outputDirectory );
    }

    /**
     * Writes all output for one box plot type.
     *
     * @param output the box plot output
     * @throws NullPointerException if the input is null
     * @throws CommaSeparatedWriteException if the output cannot be written
     */

    @Override
    public void accept( final List<DurationDiagramStatisticOuter> output )
    {
        Objects.requireNonNull( output, "Specify non-null input data when writing box plot outputs." );

        // Write output
        // In principle, each destination could have a different formatter, so 
        // the output must be generated separately for each destination
        List<DestinationConfig> numericalDestinations =
                ConfigHelper.getNumericalDestinations( super.getProjectConfig() );
        for ( DestinationConfig destinationConfig : numericalDestinations )
        {

            // Formatter
            Format formatter = null;

            // Write per time-window
            try
            {
                // Group the statistics by the LRB context in which they appear. There will be one path written
                // for each group (e.g., one path for each window with LeftOrRightOrBaseline.RIGHT data and one for 
                // each window with LeftOrRightOrBaseline.BASELINE data): #48287
                Map<LeftOrRightOrBaseline, List<DurationDiagramStatisticOuter>> groups =
                        WriterHelper.getStatisticsGroupedByContext( output );

                for ( List<DurationDiagramStatisticOuter> nextGroup : groups.values() )
                {
                    Set<Path> innerPathsWrittenTo =
                            CommaSeparatedDurationDiagramWriter.writeOnePairedOutputType( super.getOutputDirectory(),
                                                                                          destinationConfig,
                                                                                          nextGroup,
                                                                                          formatter,
                                                                                          super.getDurationUnits() );

                    this.pathsWrittenTo.addAll( innerPathsWrittenTo );
                }
            }
            catch ( IOException e )
            {
                throw new CommaSeparatedWriteException( "While writing comma separated output: ", e );
            }

        }

    }

    /**
     * Return a snapshot of the paths written to (so far)
     * 
     * @return the paths written so far.
     */

    @Override
    public Set<Path> get()
    {
        return this.getPathsWrittenTo();
    }

    /**
     * Writes all output for one paired type.
     *
     * @param outputDirectory the directory into which to write
     * @param destinationConfig the destination configuration    
     * @param output the paired output to iterate through
     * @param formatter optional formatter, can be null
     * @param durationUnits the time units for durations
     * @throws IOException if the output cannot be written
     * @return set of paths actually written to
     */

    private static Set<Path> writeOnePairedOutputType( Path outputDirectory,
                                                       DestinationConfig destinationConfig,
                                                       List<DurationDiagramStatisticOuter> output,
                                                       Format formatter,
                                                       ChronoUnit durationUnits )
            throws IOException
    {
        Set<Path> pathsWrittenTo = new HashSet<>( 1 );

        // Loop across metrics
        SortedSet<MetricConstants> metrics = Slicer.discover( output, DurationDiagramStatisticOuter::getMetricName );
        for ( MetricConstants m : metrics )
        {
            StringJoiner headerRow = new StringJoiner( "," );

            headerRow.add( "FEATURE DESCRIPTION" );

            StringJoiner timeWindowHeader =
                    CommaSeparatedUtilities.getTimeWindowHeaderFromSampleMetadata( output.get( 0 )
                                                                                         .getMetadata(),
                                                                                   durationUnits );
            headerRow.merge( timeWindowHeader );

            List<DurationDiagramStatisticOuter> nextOutput = Slicer.filter( output, m );

            List<RowCompareByLeft> rows =
                    CommaSeparatedDurationDiagramWriter.getRowsForOnePairedOutput( m,
                                                                                   nextOutput,
                                                                                   headerRow,
                                                                                   formatter,
                                                                                   durationUnits );

            // Add the header row
            rows.add( RowCompareByLeft.of( HEADER_INDEX, headerRow ) );

            // Write the output
            SampleMetadata meta = nextOutput.get( 0 ).getMetadata();
            MetricConstants metricName = nextOutput.get( 0 ).getMetricName();

            Path outputPath = ConfigHelper.getOutputPathToWrite( outputDirectory,
                                                                 destinationConfig,
                                                                 meta,
                                                                 metricName,
                                                                 null );

            CommaSeparatedStatisticsWriter.writeTabularOutputToFile( rows, outputPath );

            // If writeTabularOutputToFile did not throw an exception, assume
            // it succeeded in writing to the file, track outputs now (add must
            // be called after the above call).
            pathsWrittenTo.add( outputPath );
        }

        return Collections.unmodifiableSet( pathsWrittenTo );
    }

    /**
     * Returns the results for one paired output.
     *
     * @param metricName the score name
     * @param output the paired output
     * @param headerRow the header row
     * @param formatter optional formatter, can be null
     * @param durationUnits the time units for durations
     * @return the rows to write
     */

    private static List<RowCompareByLeft>
            getRowsForOnePairedOutput( MetricConstants metricName,
                                       List<DurationDiagramStatisticOuter> output,
                                       StringJoiner headerRow,
                                       Format formatter,
                                       ChronoUnit durationUnits )
    {
        String outerName = metricName.toString() + HEADER_DELIMITER;
        List<RowCompareByLeft> returnMe = new ArrayList<>();

        // Discover the time windows and thresholds
        SortedSet<OneOrTwoThresholds> thresholds =
                Slicer.discover( output, meta -> meta.getMetadata().getThresholds() );

        SampleMetadata metadata = CommaSeparatedStatisticsWriter.getSampleMetadataFromListOfStatistics( output );

        // Add the rows
        // Loop across the thresholds
        for ( OneOrTwoThresholds t : thresholds )
        {
            // Append to header
            headerRow.add( outerName + "BASIS TIME" + HEADER_DELIMITER + t );
            headerRow.add( outerName + "DURATION" + HEADER_DELIMITER + t );

            // Slice by threshold
            List<DurationDiagramStatisticOuter> sliced = Slicer.filter( output,
                                                                        data -> data.getMetadata()
                                                                                    .getThresholds()
                                                                                    .equals( t ) );

            // Loop across the outputs
            for ( DurationDiagramStatisticOuter next : sliced )
            {
                // Loop across the pairs
                for ( Pair<Instant, Duration> nextPair : next.getPairs() )
                {
                    CommaSeparatedStatisticsWriter.addRowToInput( returnMe,
                                                                  SampleMetadata.of( metadata,
                                                                                     next.getMetadata()
                                                                                         .getTimeWindow() ),
                                                                  Arrays.asList( nextPair.getLeft(),
                                                                                 nextPair.getRight() ),
                                                                  formatter,
                                                                  // Append if there are multiple thresholds
                                                                  // otherwise, create a new row
                                                                  thresholds.size() > 1,
                                                                  durationUnits,
                                                                  nextPair.getLeft().toString() );
                }
            }
        }

        return returnMe;
    }

    /**
     * Return a snapshot of the paths written to (so far)
     * 
     * @return the paths written so far.
     */

    private Set<Path> getPathsWrittenTo()
    {
        return Collections.unmodifiableSet( this.pathsWrittenTo );
    }

    /**
     * Hidden constructor.
     * 
     * @param projectConfig the project configuration
     * @param durationUnits the time units for durations
     * @param outputDirectory the directory into which to write
     * @throws NullPointerException if either input is null 
     * @throws ProjectConfigException if the project configuration is not valid for writing 
     */

    private CommaSeparatedDurationDiagramWriter( ProjectConfig projectConfig,
                                                 ChronoUnit durationUnits,
                                                 Path outputDirectory )
    {
        super( projectConfig, durationUnits, outputDirectory );
    }

}