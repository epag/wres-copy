package wres.datamodel.messages;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Future;
import java.util.stream.Collectors;

import org.apache.commons.lang3.tuple.Pair;

import com.google.protobuf.Duration;
import com.google.protobuf.Timestamp;

import wres.config.generated.DoubleBoundsType;
import wres.config.generated.ProjectConfig;
import wres.datamodel.DatasetIdentifier;
import wres.datamodel.Ensemble;
import wres.datamodel.EvaluationEvent;
import wres.datamodel.MetricConstants;
import wres.datamodel.MetricConstants.MetricDimension;
import wres.datamodel.MetricConstants.StatisticType;
import wres.datamodel.VectorOfDoubles;
import wres.datamodel.sampledata.Location;
import wres.datamodel.sampledata.SampleMetadata;
import wres.datamodel.sampledata.pairs.PoolOfPairs;
import wres.datamodel.statistics.DoubleScoreStatisticOuter;
import wres.datamodel.statistics.PairedStatisticOuter;
import wres.datamodel.statistics.StatisticMetadata;
import wres.datamodel.statistics.StatisticsForProject;
import wres.datamodel.thresholds.OneOrTwoThresholds;
import wres.datamodel.time.Event;
import wres.datamodel.time.TimeSeries;
import wres.statistics.generated.BoxplotMetric;
import wres.statistics.generated.BoxplotMetric.LinkedValueType;
import wres.statistics.generated.BoxplotStatistic;
import wres.statistics.generated.DiagramMetric;
import wres.statistics.generated.DiagramMetric.DiagramMetricComponent.DiagramComponentName;
import wres.statistics.generated.DiagramMetric.DiagramMetricComponent;
import wres.statistics.generated.DiagramStatistic;
import wres.statistics.generated.Evaluation;
import wres.statistics.generated.EvaluationStatus;
import wres.statistics.generated.EvaluationStatus.CompletionStatus;
import wres.statistics.generated.EvaluationStatus.EvaluationStatusEvent;
import wres.statistics.generated.EvaluationStatus.EvaluationStatusEvent.StatusMessageType;
import wres.statistics.generated.DiagramStatistic.DiagramStatisticComponent;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.DoubleScoreStatistic.DoubleScoreStatisticComponent;
import wres.statistics.generated.DurationDiagramStatistic.PairOfInstantAndDuration;
import wres.statistics.generated.DurationDiagramMetric;
import wres.statistics.generated.DurationDiagramStatistic;
import wres.statistics.generated.DurationScoreMetric;
import wres.statistics.generated.DurationScoreMetric.DurationScoreMetricComponent;
import wres.statistics.generated.DurationScoreMetric.DurationScoreMetricComponent.ComponentName;
import wres.statistics.generated.DurationScoreStatistic;
import wres.statistics.generated.DurationScoreStatistic.DurationScoreStatisticComponent;
import wres.statistics.generated.Geometry;
import wres.statistics.generated.ReferenceTime.ReferenceTimeType;
import wres.statistics.generated.Pool;
import wres.statistics.generated.Season;
import wres.statistics.generated.Statistics;
import wres.statistics.generated.Threshold;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.Pairs;
import wres.statistics.generated.ReferenceTime;
import wres.statistics.generated.Pairs.TimeSeriesOfPairs;
import wres.statistics.generated.TimeScale;
import wres.statistics.generated.TimeScale.TimeScaleFunction;
import wres.statistics.generated.TimeWindow;
import wres.statistics.generated.ValueFilter;

/**
 * Creates statistics messages in protobuf format from internal representations.
 * 
 * TODO: most of the helpers within this class will disappear when the containers in the {@link wres.datamodel} are 
 * replaced with canonical abstractions from {@link wres.statistics.generated}.
 * 
 * @author james.brown@hydrosolved.com
 */

public class MessageFactory
{

    /**
     * Creates a collection of {@link wres.statistics.generated.Statistics} by pool from a
     * {@link wres.datamodel.statistics.StatisticsForProject}.
     * 
     * @param project the project statistics
     * @return the statistics message
     * @throws IllegalArgumentException if there are zero statistics in total
     * @throws NullPointerException if the input is null
     * @throws InterruptedException if the statistics could not be retrieved from the project
     */

    public static Collection<Statistics> parseByPool( StatisticsForProject project ) throws InterruptedException
    {
        Objects.requireNonNull( project );

        Collection<StatisticsForProject> decomposedStatistics = MessageFactory.getStatisticsPerPool( project );

        Collection<Statistics> returnMe = new ArrayList<>();

        for ( StatisticsForProject next : decomposedStatistics )
        {
            Statistics statistics = MessageFactory.parse( next );
            returnMe.add( statistics );
        }

        return Collections.unmodifiableCollection( returnMe );
    }

    /**
     * Decomposes the input into pools. A pool contains a single set of space, time and threshold dimensions.
     * 
     * @param project the project statistics
     * @return the decomposed statistics
     * @throws InterruptedException if the statistics could not be retrieved from the project
     * @throws NullPointerException if the input is null
     */

    private static Collection<StatisticsForProject> getStatisticsPerPool( StatisticsForProject project )
            throws InterruptedException
    {
        Objects.requireNonNull( project );

        Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics = new HashMap<>();

        // Double scores
        if ( project.hasStatistic( StatisticType.DOUBLE_SCORE ) )
        {
            List<DoubleScoreStatisticOuter> statistics = project.getDoubleScoreStatistics();
            MessageFactory.addDoubleScoreStatisticsToPool( statistics, mappedStatistics );
        }

        // Duration scores
        if ( project.hasStatistic( StatisticType.DURATION_SCORE ) )
        {
            List<wres.datamodel.statistics.DurationScoreStatisticOuter> statistics =
                    project.getDurationScoreStatistics();
            MessageFactory.addDurationScoreStatisticsToPool( statistics, mappedStatistics );
        }

        // Diagrams
        if ( project.hasStatistic( StatisticType.DIAGRAM ) )
        {
            List<wres.datamodel.statistics.DiagramStatisticOuter> statistics = project.getDiagramStatistics();
            MessageFactory.addDiagramStatisticsToPool( statistics, mappedStatistics );
        }

        // Box plots per pair
        if ( project.hasStatistic( StatisticType.BOXPLOT_PER_PAIR ) )
        {
            List<wres.datamodel.statistics.BoxplotStatisticOuter> statistics = project.getBoxPlotStatisticsPerPair();
            MessageFactory.addBoxPlotStatisticsToPool( statistics, mappedStatistics, false );
        }

        // Box plots statistics per pool
        if ( project.hasStatistic( StatisticType.BOXPLOT_PER_POOL ) )
        {
            List<wres.datamodel.statistics.BoxplotStatisticOuter> statistics = project.getBoxPlotStatisticsPerPool();
            MessageFactory.addBoxPlotStatisticsToPool( statistics, mappedStatistics, true );
        }

        // Box plots statistics per pool
        if ( project.hasStatistic( StatisticType.PAIRED ) )
        {
            List<PairedStatisticOuter<Instant, java.time.Duration>> statistics =
                    project.getInstantDurationPairStatistics();
            MessageFactory.addPairedStatisticsToPool( statistics, mappedStatistics );
        }

        Collection<StatisticsForProject> returnMe = new ArrayList<>();

        mappedStatistics.values().forEach( next -> returnMe.add( next.build() ) );

        return Collections.unmodifiableCollection( returnMe );
    }

    /**
     * Creates pool boundaries from metadata.
     * 
     * @param metadata the metadata
     * @return the pool boundaries
     */

    private static PoolBoundaries getPoolBoundaries( SampleMetadata metadata )
    {
        Objects.requireNonNull( metadata );

        wres.datamodel.time.TimeWindowOuter window = metadata.getTimeWindow();
        wres.datamodel.thresholds.OneOrTwoThresholds thresholds = metadata.getThresholds();

        // TODO: To be replaced by some other abstraction, probably a FeatureTuple
        Location location = metadata.getIdentifier()
                                    .getLocation();

        return new PoolBoundaries( location, window, thresholds );
    }

    /**
     * Creates a {@link wres.statistics.generated.Statistics} from a
     * {@link wres.datamodel.statistics.StatisticsForProject}.
     * 
     * @return the statistics message
     * @param project the project statistics
     * @throws IllegalArgumentException if there are zero statistics in total
     * @throws NullPointerException if the input is null
     * @throws InterruptedException if the statistics could not be retrieved from the project
     */

    public static Statistics parse( StatisticsForProject project ) throws InterruptedException
    {
        Objects.requireNonNull( project );

        Statistics.Builder statistics = Statistics.newBuilder();

        SampleMetadata metadata = SampleMetadata.of();

        // Add the double scores
        if ( project.hasStatistic( StatisticType.DOUBLE_SCORE ) )
        {
            List<wres.datamodel.statistics.DoubleScoreStatisticOuter> doubleScores = project.getDoubleScoreStatistics();
            doubleScores.forEach( next -> statistics.addScores( MessageFactory.parse( next ) ) );
            metadata = doubleScores.get( 0 ).getMetadata().getSampleMetadata();
        }

        // Add the diagrams
        if ( project.hasStatistic( StatisticType.DIAGRAM ) )
        {
            List<wres.datamodel.statistics.DiagramStatisticOuter> diagrams = project.getDiagramStatistics();
            diagrams.forEach( next -> statistics.addDiagrams( MessageFactory.parse( next ) ) );
            metadata = diagrams.get( 0 ).getMetadata().getSampleMetadata();
        }

        // Add the boxplots
        if ( project.hasStatistic( StatisticType.BOXPLOT_PER_PAIR )
             || project.hasStatistic( StatisticType.BOXPLOT_PER_POOL ) )
        {
            List<wres.datamodel.statistics.BoxplotStatisticOuter> boxplots =
                    new ArrayList<>( project.getBoxPlotStatisticsPerPair() );
            boxplots.addAll( project.getBoxPlotStatisticsPerPool() );
            boxplots.forEach( next -> statistics.addBoxplots( MessageFactory.parse( next ) ) );
            metadata = boxplots.get( 0 ).getMetadata().getSampleMetadata();
        }

        // Add the duration scores
        if ( project.hasStatistic( StatisticType.DURATION_SCORE ) )
        {
            List<wres.datamodel.statistics.DurationScoreStatisticOuter> durationScores =
                    project.getDurationScoreStatistics();
            durationScores.forEach( next -> statistics.addDurationScores( MessageFactory.parse( next ) ) );
            metadata = durationScores.get( 0 ).getMetadata().getSampleMetadata();
        }

        // Add the duration diagrams with instant/duration pairs
        if ( project.hasStatistic( StatisticType.PAIRED ) )
        {
            List<wres.datamodel.statistics.PairedStatisticOuter<Instant, java.time.Duration>> durationDiagrams =
                    project.getInstantDurationPairStatistics();
            durationDiagrams.forEach( next -> statistics.addDurationDiagrams( MessageFactory.parse( next ) ) );
            metadata = durationDiagrams.get( 0 ).getMetadata().getSampleMetadata();
        }

        Pool.Builder sample = Pool.newBuilder();

        if ( metadata.hasTimeWindow() )
        {
            TimeWindow timeWindow = MessageFactory.parse( metadata.getTimeWindow() );
            sample.setTimeWindow( timeWindow );
        }

        if ( metadata.hasThresholds() )
        {
            OneOrTwoThresholds thresholds = metadata.getThresholds();
            Threshold evenThreshold = MessageFactory.parse( thresholds.first() );
            sample.setEventThreshold( evenThreshold );
            if ( thresholds.hasTwo() )
            {
                Threshold decisionThreshold = MessageFactory.parse( thresholds.second() );
                sample.setDecisionThreshold( decisionThreshold );
            }
        }

        if ( metadata.hasIdentifier() && metadata.getIdentifier().hasLocation() )
        {
            Location location = metadata.getIdentifier().getLocation();
            Geometry geometry = MessageFactory.parse( location );
            sample.addGeometries( geometry );
        }

        statistics.setPool( sample );

        return statistics.build();
    }

    /**
     * Creates a collection of {@link wres.statistics.generated.Statistics} by pol from a
     * {@link wres.datamodel.statistics.StatisticsForProject}.
     * 
     * @param project the project statistics
     * @param pairs the optional pairs
     * @return the statistics messages
     * @throws IllegalArgumentException if there are zero statistics in total
     * @throws NullPointerException if the input is null
     * @throws InterruptedException if the statistics could not be retrieved from the project
     */

    public static Statistics parse( StatisticsForProject project, PoolOfPairs<Double, Ensemble> pairs )
            throws InterruptedException
    {
        Statistics prototype = MessageFactory.parse( project );

        Statistics.Builder statistics = Statistics.newBuilder( prototype );

        if ( Objects.nonNull( pairs ) )
        {
            Pool prototypeSample = statistics.getPool();
            Pool.Builder sampleBuilder = Pool.newBuilder( prototypeSample );
            sampleBuilder.setPairs( MessageFactory.parseEnsemblePairs( pairs ) );
            statistics.setPool( sampleBuilder );
        }

        return statistics.build();
    }

    /**
     * Creates a {@link EvaluationStatus} message from a list of {@link EvaluationEvent} and other metadata.
     * 
     * @param startTime the evaluation start time
     * @param endTime the evaluation end time
     * @param status the completion status
     * @param events a list of evaluation events
     * @return a status message
     * @throws NullPointerException if the start time completion status or list of events is null
     */

    public static EvaluationStatus parse( Instant startTime,
                                          Instant endTime,
                                          CompletionStatus status,
                                          List<EvaluationEvent> events )
    {
        Objects.requireNonNull( startTime );
        Objects.requireNonNull( status );
        Objects.requireNonNull( events );

        EvaluationStatus.Builder builder = EvaluationStatus.newBuilder();

        Timestamp start = Timestamp.newBuilder()
                                   .setSeconds( startTime.getEpochSecond() )
                                   .build();
        builder.setEvaluationStartTime( start );


        if ( Objects.nonNull( endTime ) )
        {
            Timestamp end = Timestamp.newBuilder()
                                     .setSeconds( endTime.getEpochSecond() )
                                     .build();
            builder.setEvaluationEndTime( end );
        }

        builder.setCompletionStatus( status );

        for ( EvaluationEvent event : events )
        {
            EvaluationStatusEvent.Builder statusEvent = EvaluationStatusEvent.newBuilder();
            statusEvent.setEventType( StatusMessageType.valueOf( event.getEventType().name() ) )
                       .setEventMessage( event.getMessage() );
            builder.addStatusEvents( statusEvent );
        }

        return builder.build();
    }

    /**
     * Creates a {@link Season} message from a {@link wres.config.generated.PairConfig.Season}.
     * 
     * @param season the declared season
     * @return the season message
     */

    public static Season parse( wres.config.generated.PairConfig.Season season )
    {
        Objects.requireNonNull( season );

        return Season.newBuilder()
                     .setStartDay( season.getEarliestDay() )
                     .setStartMonth( season.getEarliestMonth() )
                     .setEndDay( season.getLatestDay() )
                     .setEndMonth( season.getLatestMonth() )
                     .build();
    }

    /**
     * Creates a {@link ValueFilter} message from a {@link DoubleBoundsType}.
     * 
     * @param filter the declared value filter
     * @return the value filter message
     */

    public static ValueFilter parse( DoubleBoundsType filter )
    {
        Objects.requireNonNull( filter );

        ValueFilter.Builder filterBuilder = ValueFilter.newBuilder();

        if ( Objects.nonNull( filter.getMinimum() ) )
        {
            filterBuilder.setMinimumInclusiveValue( filter.getMinimum() );
        }

        if ( Objects.nonNull( filter.getMaximum() ) )
        {
            filterBuilder.setMaximumInclusiveValue( filter.getMaximum() );
        }

        return filterBuilder.build();
    }

    /**
     * Creates a {@link wres.statistics.generated.TimeScale} from a {@link wres.datamodel.scale.TimeScaleOuter}.
     * 
     * @param timeScale the time scale from which to create a message
     * @return the message
     */

    public static TimeScale parse( wres.datamodel.scale.TimeScaleOuter timeScale )
    {
        Objects.requireNonNull( timeScale );

        return timeScale.getTimeScale();
    }

    /**
     * Creates a {@link wres.statistics.generated.TimeWindow} from a {@link wres.datamodel.time.TimeWindowOuter}.
     * 
     * @param timeWindow the time window from which to create a message
     * @return the message
     */

    public static TimeWindow parse( wres.datamodel.time.TimeWindowOuter timeWindow )
    {
        Objects.requireNonNull( timeWindow );

        return timeWindow.getTimeWindow();
    }

    /**
     * Creates a {@link java.time.Duration} from a {@link Duration}.
     * 
     * @param duration the duration to parse
     * @return the duration
     */

    public static java.time.Duration parse( Duration duration )
    {
        Objects.requireNonNull( duration );

        return java.time.Duration.ofSeconds( duration.getSeconds(), duration.getNanos() );
    }

    /**
     * Creates a {@link java.time.Duration} from a {@link Duration}.
     * 
     * @param duration the duration to parse
     * @return the duration
     */

    public static Duration parse( java.time.Duration duration )
    {
        Objects.requireNonNull( duration );

        return Duration.newBuilder()
                       .setSeconds( duration.getSeconds() )
                       .setNanos( duration.getNano() )
                       .build();
    }

    /**
     * Creates a {@link wres.statistics.generated.Threshold} from a 
     * {@link wres.datamodel.thresholds.ThresholdOuter}.
     * 
     * @param threshold the threshold from which to create a message
     * @return the message
     */

    public static Threshold parse( wres.datamodel.thresholds.ThresholdOuter threshold )
    {
        Objects.requireNonNull( threshold );

        return threshold.getThreshold();
    }

    /**
     * Creates a {@link wres.statistics.generated.DoubleScoreStatistic} from a 
     * {@link wres.datamodel.statistics.DoubleScoreStatisticOuter}.
     * 
     * @param statistic the statistic from which to create a message
     * @return the message
     */

    public static DoubleScoreStatistic parse( wres.datamodel.statistics.DoubleScoreStatisticOuter statistic )
    {
        Objects.requireNonNull( statistic );

        return statistic.getData();
    }

    /**
     * Creates a {@link wres.statistics.generated.DurationScoreStatistic} from a 
     * {@link wres.datamodel.statistics.DurationScoreStatisticOuter}.
     * 
     * @param statistic the statistic from which to create a message
     * @return the message
     */

    public static DurationScoreStatistic parse( wres.datamodel.statistics.DurationScoreStatisticOuter statistic )
    {
        Objects.requireNonNull( statistic );

        return statistic.getData();
    }

    /**
     * Creates a {@link wres.statistics.generated.DiagramStatistic} from a 
     * {@link wres.datamodel.statistics.DiagramStatisticOuter}.
     * 
     * @param statistic the statistic from which to create a message
     * @return the message
     */

    public static DiagramStatistic parse( wres.datamodel.statistics.DiagramStatisticOuter statistic )
    {
        Objects.requireNonNull( statistic );

        return statistic.getData();
    }

    /**
     * Creates a {@link wres.statistics.generated.DurationDiagramStatistic} from a 
     * {@link wres.datamodel.statistics.PairedStatisticOuter} composed of timing 
     * errors.
     * 
     * @param statistic the statistic from which to create a message
     * @return the message
     */

    public static DurationDiagramStatistic
            parse( wres.datamodel.statistics.PairedStatisticOuter<Instant, java.time.Duration> statistic )
    {
        Objects.requireNonNull( statistic );

        DurationDiagramMetric.Builder metricBuilder = DurationDiagramMetric.newBuilder();
        MetricConstants name = statistic.getMetadata().getMetricID();
        metricBuilder.setName( MetricName.valueOf( name.name() ) );

        // Set the limits for the diagram where available
        if ( name.hasLimits() )
        {
            java.time.Duration minimum = (java.time.Duration) name.getMinimum();
            java.time.Duration maximum = (java.time.Duration) name.getMaximum();
            java.time.Duration optimum = (java.time.Duration) name.getOptimum();

            if ( Objects.nonNull( minimum ) )
            {
                Duration minimimProto = Duration.newBuilder()
                                                .setSeconds( minimum.getSeconds() )
                                                .setNanos( minimum.getNano() )
                                                .build();
                metricBuilder.setMinimum( minimimProto );
            }

            if ( Objects.nonNull( maximum ) )
            {
                Duration maximumProto = Duration.newBuilder()
                                                .setSeconds( maximum.getSeconds() )
                                                .setNanos( maximum.getNano() )
                                                .build();
                metricBuilder.setMaximum( maximumProto );
            }

            if ( Objects.nonNull( optimum ) )
            {
                Duration optimumProto = Duration.newBuilder()
                                                .setSeconds( optimum.getSeconds() )
                                                .setNanos( optimum.getNano() )
                                                .build();
                metricBuilder.setOptimum( optimumProto );
            }
        }

        DurationDiagramStatistic.Builder diagramBuilder = DurationDiagramStatistic.newBuilder();

        // Set the diagram components and values
        for ( Pair<Instant, java.time.Duration> nextPair : statistic.getData() )
        {
            Instant nextInstant = nextPair.getLeft();
            java.time.Duration nextDuration = nextPair.getRight();

            Timestamp stamp = Timestamp.newBuilder()
                                       .setSeconds( nextInstant.getEpochSecond() )
                                       .setNanos( nextInstant.getNano() )
                                       .build();

            Duration duration = Duration.newBuilder()
                                        .setSeconds( nextDuration.getSeconds() )
                                        .setNanos( nextDuration.getNano() )
                                        .build();

            PairOfInstantAndDuration.Builder builder = PairOfInstantAndDuration.newBuilder();
            builder.setTime( stamp ).setDuration( duration );
            diagramBuilder.addStatistics( builder );
        }

        // Set the metric
        diagramBuilder.setMetric( metricBuilder );

        return diagramBuilder.build();
    }

    /**
     * Creates a {@link wres.statistics.generated.DiagramStatistic} from a 
     * {@link wres.datamodel.statistics.BoxplotStatisticOuter}.
     * 
     * @param statistic the statistic from which to create a message
     * @return the message
     */

    public static BoxplotStatistic parse( wres.datamodel.statistics.BoxplotStatisticOuter statistic )
    {
        Objects.requireNonNull( statistic );

        return statistic.getData();
    }

    /**
     * Creates a {@link wres.statistics.generated.Geometry} from a 
     * {@link wres.datamodel.sampledata.Location}.
     * 
     * TODO: map across the new FeatureTuple when it arrives and then delete this comment.
     * 
     * @param location the location from which to create a message
     * @return the message
     */

    public static Geometry parse( wres.datamodel.sampledata.Location location )
    {
        Objects.requireNonNull( location );

        Geometry.Builder builder = Geometry.newBuilder();

        if ( location.hasLocationName() )
        {
            builder.setName( location.getLocationName() );
        }

        // Add the wkt, srid, description and right/baseline names, as available

        return builder.build();
    }

    /**
     * Returns a {@link Pairs} from a {@link PoolOfPairs}.
     * 
     * @param metadata the metadata
     * @return a pairs message
     */

    private static Pairs parseEnsemblePairs( PoolOfPairs<Double, Ensemble> pairs )
    {
        Objects.requireNonNull( pairs );

        Pairs.Builder builder = Pairs.newBuilder();

        for ( TimeSeries<Pair<Double, Ensemble>> nextSeries : pairs.get() )
        {
            TimeSeriesOfPairs.Builder series = TimeSeriesOfPairs.newBuilder();

            // Add the reference times
            Map<wres.datamodel.time.ReferenceTimeType, Instant> times = nextSeries.getReferenceTimes();
            for ( Map.Entry<wres.datamodel.time.ReferenceTimeType, Instant> nextEntry : times.entrySet() )
            {
                wres.datamodel.time.ReferenceTimeType nextType = nextEntry.getKey();
                Instant nextTime = nextEntry.getValue();
                ReferenceTime nextRef =
                        ReferenceTime.newBuilder()
                                     .setReferenceTimeType( ReferenceTimeType.valueOf( nextType.toString() ) )
                                     .setReferenceTime( Timestamp.newBuilder()
                                                                 .setSeconds( nextTime.getEpochSecond() )
                                                                 .setNanos( nextTime.getNano() ) )
                                     .build();
                series.addReferenceTimes( nextRef );
            }

            // Add the events
            for ( Event<Pair<Double, Ensemble>> nextEvent : nextSeries.getEvents() )
            {
                wres.statistics.generated.Pairs.Pair.Builder nextPair =
                        wres.statistics.generated.Pairs.Pair.newBuilder();

                nextPair.setValidTime( Timestamp.newBuilder()
                                                .setSeconds( nextEvent.getTime().getEpochSecond() )
                                                .setNanos( nextEvent.getTime().getNano() ) )
                        .addLeft( nextEvent.getValue().getLeft() );

                for ( double nextRight : nextEvent.getValue().getRight().getMembers() )
                {
                    nextPair.addRight( nextRight );
                }

                series.addPairs( nextPair );
            }

            builder.addTimeSeries( series );
        }

        return builder.build();
    }

    /**
     * Adds the boundaries to timing error statistics. 
     * 
     * TODO: add these boundaries directly to the {@link MetricConstants}, which will require a separate enumeration for the 
     * {@link MetricGroup#UNIVARIATE_STATISTIC} that apply to timing errors.
     * 
     * @param builder the builder
     * @param name the metric name whose boundaries are required
     * @throws NullPointerException if either input is null
     */

    private static void addLimitsToTimingStatistic( DurationScoreMetricComponent.Builder builder, MetricConstants name )
    {
        Objects.requireNonNull( builder );
        Objects.requireNonNull( name );

        Duration minimum = Duration.newBuilder()
                                   .setSeconds( wres.datamodel.time.TimeWindowOuter.DURATION_MIN.getSeconds() )
                                   .setNanos( wres.datamodel.time.TimeWindowOuter.DURATION_MIN.getNano() )
                                   .build();

        Duration maximum = Duration.newBuilder()
                                   .setSeconds( wres.datamodel.time.TimeWindowOuter.DURATION_MAX.getSeconds() )
                                   .setNanos( wres.datamodel.time.TimeWindowOuter.DURATION_MAX.getNano() )
                                   .build();

        Duration zero = Duration.newBuilder()
                                .setSeconds( java.time.Duration.ZERO.getSeconds() )
                                .setNanos( java.time.Duration.ZERO.getNano() )
                                .build();

        switch ( name )
        {
            case MEAN:
                builder.setMinimum( minimum ).setMaximum( maximum ).setOptimum( zero );
                break;
            case MEDIAN:
                builder.setMinimum( minimum ).setMaximum( maximum ).setOptimum( zero );
                break;
            case MINIMUM:
                builder.setMinimum( minimum ).setMaximum( maximum ).setOptimum( zero );
                break;
            case MAXIMUM:
                builder.setMinimum( minimum ).setMaximum( maximum ).setOptimum( zero );
                break;
            case STANDARD_DEVIATION:
                builder.setMinimum( zero ).setMaximum( maximum ).setOptimum( zero );
                break;
            case MEAN_ABSOLUTE:
                builder.setMinimum( zero ).setMaximum( maximum ).setOptimum( zero );
                break;
            default:
                throw new IllegalArgumentException( "Unrecognized univariate statistic for serializing timing errors to "
                                                    + "protobuf." );
        }

    }

    /**
     * Class the helps to organize statistics by pool boundaries within a map.
     * 
     * @author james.brown@hydrosolved.com
     */

    private static class PoolBoundaries
    {
        private final OneOrTwoThresholds thresholds;
        private final wres.datamodel.time.TimeWindowOuter window;
        private final wres.datamodel.sampledata.Location location;

        private PoolBoundaries( wres.datamodel.sampledata.Location location,
                                wres.datamodel.time.TimeWindowOuter window,
                                OneOrTwoThresholds thresholds )
        {
            this.location = location;
            this.window = window;
            this.thresholds = thresholds;
        }

        @Override
        public boolean equals( Object o )
        {
            if ( o == this )
            {
                return true;
            }

            if ( ! ( o instanceof PoolBoundaries ) )
            {
                return false;
            }

            PoolBoundaries input = (PoolBoundaries) o;

            return Objects.equals( this.location, input.location ) && Objects.equals( this.window, input.window )
                   && Objects.equals( this.thresholds, input.thresholds );
        }

        @Override
        public int hashCode()
        {
            return Objects.hash( location, window, thresholds );
        }
    }

    /**
     * Adds the new statistics to the map.
     * 
     * @param statistics the statistics to add
     * @param mappedStatistics the existing statistics which the new statistics should be added
     * @throws NullPointerException if the input is null
     */

    private static void addDoubleScoreStatisticsToPool( List<DoubleScoreStatisticOuter> statistics,
                                                        Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics )
    {
        Objects.requireNonNull( mappedStatistics );

        for ( DoubleScoreStatisticOuter next : statistics )
        {
            SampleMetadata metadata = next.getMetadata().getSampleMetadata();
            PoolBoundaries poolBoundaries = MessageFactory.getPoolBoundaries( metadata );

            StatisticsForProject.Builder another = mappedStatistics.get( poolBoundaries );

            if ( Objects.isNull( another ) )
            {
                another = new StatisticsForProject.Builder();
                mappedStatistics.put( poolBoundaries, another );
            }

            Future<List<DoubleScoreStatisticOuter>> future = CompletableFuture.completedFuture( List.of( next ) );
            another.addDoubleScoreStatistics( future );
        }
    }

    /**
     * Adds the new statistics to the map.
     * 
     * @param statistics the statistics to add
     * @param mappedStatistics the existing statistics which the new statistics should be added
     * @throws NullPointerException if the input is null
     */

    private static void
            addDurationScoreStatisticsToPool( List<wres.datamodel.statistics.DurationScoreStatisticOuter> statistics,
                                              Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics )
    {
        Objects.requireNonNull( mappedStatistics );

        for ( wres.datamodel.statistics.DurationScoreStatisticOuter next : statistics )
        {
            SampleMetadata metadata = next.getMetadata().getSampleMetadata();
            PoolBoundaries poolBoundaries = MessageFactory.getPoolBoundaries( metadata );

            StatisticsForProject.Builder another = mappedStatistics.get( poolBoundaries );

            if ( Objects.isNull( another ) )
            {
                another = new StatisticsForProject.Builder();
                mappedStatistics.put( poolBoundaries, another );
            }

            Future<List<wres.datamodel.statistics.DurationScoreStatisticOuter>> future =
                    CompletableFuture.completedFuture( List.of( next ) );
            another.addDurationScoreStatistics( future );
        }
    }

    /**
     * Adds the new statistics to the map.
     * 
     * @param statistics the statistics to add
     * @param mappedStatistics the existing statistics which the new statistics should be added
     * @param perPool is true if the statistics are per pool, false for per pair (per pool)
     * @throws NullPointerException if the input is null
     */

    private static void addBoxPlotStatisticsToPool( List<wres.datamodel.statistics.BoxplotStatisticOuter> statistics,
                                                    Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics,
                                                    boolean perPool )
    {
        Objects.requireNonNull( mappedStatistics );

        for ( wres.datamodel.statistics.BoxplotStatisticOuter next : statistics )
        {
            SampleMetadata metadata = next.getMetadata().getSampleMetadata();
            PoolBoundaries poolBoundaries = MessageFactory.getPoolBoundaries( metadata );

            StatisticsForProject.Builder another = mappedStatistics.get( poolBoundaries );

            if ( Objects.isNull( another ) )
            {
                another = new StatisticsForProject.Builder();
                mappedStatistics.put( poolBoundaries, another );
            }

            Future<List<wres.datamodel.statistics.BoxplotStatisticOuter>> future =
                    CompletableFuture.completedFuture( List.of( next ) );
            if ( perPool )
            {
                another.addBoxPlotStatisticsPerPool( future );
            }
            else
            {
                another.addBoxPlotStatisticsPerPair( future );
            }
        }
    }

    /**
     * Adds the new statistics to the map.
     * 
     * @param statistics the statistics to add
     * @param mappedStatistics the existing statistics which the new statistics should be added
     * @throws NullPointerException if the input is null
     */

    private static void addDiagramStatisticsToPool( List<wres.datamodel.statistics.DiagramStatisticOuter> statistics,
                                                    Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics )
    {
        Objects.requireNonNull( mappedStatistics );

        for ( wres.datamodel.statistics.DiagramStatisticOuter next : statistics )
        {
            SampleMetadata metadata = next.getMetadata().getSampleMetadata();
            PoolBoundaries poolBoundaries = MessageFactory.getPoolBoundaries( metadata );

            StatisticsForProject.Builder another = mappedStatistics.get( poolBoundaries );

            if ( Objects.isNull( another ) )
            {
                another = new StatisticsForProject.Builder();
                mappedStatistics.put( poolBoundaries, another );
            }

            Future<List<wres.datamodel.statistics.DiagramStatisticOuter>> future =
                    CompletableFuture.completedFuture( List.of( next ) );
            another.addDiagramStatistics( future );
        }
    }

    /**
     * Adds the new statistics to the map.
     * 
     * @param statistics the statistics to add
     * @param mappedStatistics the existing statistics which the new statistics should be added
     * @throws NullPointerException if the input is null
     */

    private static void addPairedStatisticsToPool( List<PairedStatisticOuter<Instant, java.time.Duration>> statistics,
                                                   Map<PoolBoundaries, StatisticsForProject.Builder> mappedStatistics )
    {
        Objects.requireNonNull( mappedStatistics );

        for ( PairedStatisticOuter<Instant, java.time.Duration> next : statistics )
        {
            SampleMetadata metadata = next.getMetadata().getSampleMetadata();
            PoolBoundaries poolBoundaries = MessageFactory.getPoolBoundaries( metadata );

            StatisticsForProject.Builder another = mappedStatistics.get( poolBoundaries );

            if ( Objects.isNull( another ) )
            {
                another = new StatisticsForProject.Builder();
                mappedStatistics.put( poolBoundaries, another );
            }

            Future<List<PairedStatisticOuter<Instant, java.time.Duration>>> future =
                    CompletableFuture.completedFuture( List.of( next ) );
            another.addInstantDurationPairStatistics( future );
        }
    }

    /**
     * Do not construct.
     */

    private MessageFactory()
    {
    }

}