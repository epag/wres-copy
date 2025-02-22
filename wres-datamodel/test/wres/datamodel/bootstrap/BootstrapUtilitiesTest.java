package wres.datamodel.bootstrap;

import java.time.Duration;
import java.time.Instant;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.tuple.Pair;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolMetadata;
import wres.datamodel.scale.TimeScaleOuter;
import wres.datamodel.space.Feature;
import wres.datamodel.space.FeatureGroup;
import wres.datamodel.space.FeatureTuple;
import wres.datamodel.time.Event;
import wres.datamodel.time.TimeSeries;
import wres.datamodel.time.TimeSeriesMetadata;
import wres.statistics.MessageUtilities;
import wres.statistics.generated.BoxplotMetric;
import wres.statistics.generated.BoxplotStatistic;
import wres.statistics.generated.DiagramMetric;
import wres.statistics.generated.DiagramStatistic;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.DurationDiagramMetric;
import wres.statistics.generated.DurationDiagramStatistic;
import wres.statistics.generated.DurationScoreMetric;
import wres.statistics.generated.DurationScoreStatistic;
import wres.statistics.generated.Evaluation;
import wres.statistics.generated.GeometryGroup;
import wres.statistics.generated.GeometryTuple;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.Statistics;

/**
 * Tests the {@link BootstrapUtilitiesTest}.
 *
 * @author James Brown
 */
class BootstrapUtilitiesTest
{
    @Test
    void testHasSufficientDataForStationaryBootstrap()
    {
        TimeSeriesMetadata metadata = TimeSeriesMetadata.of( Map.of(),
                                                             TimeScaleOuter.of(),
                                                             "foo",
                                                             Feature.of( MessageUtilities.getGeometry( "bar" ) ),
                                                             "baz" );
        TimeSeries<String> noEvents = TimeSeries.of( metadata );
        TimeSeries<String> oneEvent =
                new TimeSeries.Builder<String>().setMetadata( metadata )
                                                .addEvent( Event.of( Instant.MIN, "" ) )
                                                .build();
        TimeSeries<String> twoEvents =
                new TimeSeries.Builder<String>().setMetadata( metadata )
                                                .addEvent( Event.of( Instant.MIN, "" ) )
                                                .addEvent( Event.of( Instant.MAX, "" ) )
                                                .build();

        assertAll( () -> assertFalse( BootstrapUtilities.hasSufficientDataForStationaryBootstrap( List.of() ) ),
                   () -> assertFalse( BootstrapUtilities.hasSufficientDataForStationaryBootstrap( List.of( noEvents,
                                                                                                           oneEvent ) ) ),
                   () -> assertTrue( BootstrapUtilities.hasSufficientDataForStationaryBootstrap( List.of( oneEvent,
                                                                                                          twoEvents ) ) ) );
    }

    @Test
    void testGetOptimalBlockSizeForStationaryBootstrap()
    {
        // Observations: 25510317T00_FAKE2_observations.xml
        Feature feature = Feature.of( MessageUtilities.getGeometry( "bar" ) );
        TimeSeriesMetadata metadata = TimeSeriesMetadata.of( Collections.emptyMap(),
                                                             TimeScaleOuter.of( Duration.ofHours( 1 ) ),
                                                             "foo",
                                                             feature,
                                                             "baz" );

        Instant T2551_03_18T21_00_00Z = Instant.parse( "2551-03-18T21:00:00Z" );
        Instant T2551_03_18T20_00_00Z = Instant.parse( "2551-03-18T20:00:00Z" );
        Instant T2551_03_18T19_00_00Z = Instant.parse( "2551-03-18T19:00:00Z" );
        Instant T2551_03_18T18_00_00Z = Instant.parse( "2551-03-18T18:00:00Z" );
        Instant T2551_03_18T17_00_00Z = Instant.parse( "2551-03-18T17:00:00Z" );
        Instant T2551_03_18T16_00_00Z = Instant.parse( "2551-03-18T16:00:00Z" );
        Instant T2551_03_18T15_00_00Z = Instant.parse( "2551-03-18T15:00:00Z" );
        Instant T2551_03_18T14_00_00Z = Instant.parse( "2551-03-18T14:00:00Z" );
        Instant T2551_03_18T13_00_00Z = Instant.parse( "2551-03-18T13:00:00Z" );
        Instant T2551_03_18T12_00_00Z = Instant.parse( "2551-03-18T12:00:00Z" );
        Instant T2551_03_18T11_00_00Z = Instant.parse( "2551-03-18T11:00:00Z" );
        Instant T2551_03_18T10_00_00Z = Instant.parse( "2551-03-18T10:00:00Z" );
        Instant T2551_03_18T09_00_00Z = Instant.parse( "2551-03-18T09:00:00Z" );
        Instant T2551_03_18T08_00_00Z = Instant.parse( "2551-03-18T08:00:00Z" );
        Instant T2551_03_18T07_00_00Z = Instant.parse( "2551-03-18T07:00:00Z" );
        Instant T2551_03_18T06_00_00Z = Instant.parse( "2551-03-18T06:00:00Z" );
        Instant T2551_03_18T05_00_00Z = Instant.parse( "2551-03-18T05:00:00Z" );
        Instant T2551_03_18T04_00_00Z = Instant.parse( "2551-03-18T04:00:00Z" );

        TimeSeries<Pair<Double, Integer>> series =
                new TimeSeries.Builder<Pair<Double, Integer>>().setMetadata( metadata )
                                                               .addEvent( Event.of( T2551_03_18T04_00_00Z,
                                                                                    Pair.of( 491.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T05_00_00Z,
                                                                                    Pair.of( 499.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T06_00_00Z,
                                                                                    Pair.of( 503.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T07_00_00Z,
                                                                                    Pair.of( 509.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T08_00_00Z,
                                                                                    Pair.of( 521.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T09_00_00Z,
                                                                                    Pair.of( 523.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T10_00_00Z,
                                                                                    Pair.of( 541.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T11_00_00Z,
                                                                                    Pair.of( 547.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T12_00_00Z,
                                                                                    Pair.of( 557.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T13_00_00Z,
                                                                                    Pair.of( 563.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T14_00_00Z,
                                                                                    Pair.of( 569.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T15_00_00Z,
                                                                                    Pair.of( 571.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T16_00_00Z,
                                                                                    Pair.of( 577.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T17_00_00Z,
                                                                                    Pair.of( 587.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T18_00_00Z,
                                                                                    Pair.of( 593.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T19_00_00Z,
                                                                                    Pair.of( 599.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T20_00_00Z,
                                                                                    Pair.of( 601.0, 0 ) ) )
                                                               .addEvent( Event.of( T2551_03_18T21_00_00Z,
                                                                                    Pair.of( 607.0, 0 ) ) )
                                                               .build();

        GeometryTuple geoTuple = wres.datamodel.messages.MessageFactory.getGeometryTuple( feature, feature, null );
        FeatureTuple featureTuple = FeatureTuple.of( geoTuple );
        GeometryGroup geoGroup =
                MessageUtilities.getGeometryGroup( featureTuple.toStringShort(), geoTuple );
        FeatureGroup featureGroup = FeatureGroup.of( geoGroup );

        wres.statistics.generated.Pool poolDescription =
                wres.datamodel.messages.MessageFactory.getPool( featureGroup,
                                                                null,
                                                                null,
                                                                null,
                                                                false );
        Evaluation evaluation = Evaluation.newBuilder()
                                          .setRightVariableName( "qux" )
                                          .setMeasurementUnit( "quux" )
                                          .build();
        PoolMetadata poolMetadata = PoolMetadata.of( evaluation, poolDescription );
        Pool<TimeSeries<Pair<Double, Integer>>> pool = Pool.of( List.of( series ), poolMetadata );

        Pair<Long, Duration> actual = BootstrapUtilities.getOptimalBlockSizeForStationaryBootstrap( pool );
        Pair<Long, Duration> expected = Pair.of( 4L, Duration.ofHours( 1 ) );

        assertEquals( expected, actual );
    }

    @Test
    void testReconcileQuantilesWithNominalStatistics()
    {
        // Add some quantiles
        MetricName p = MetricName.TIME_TO_PEAK_ERROR;
        MetricName q = MetricName.TIME_TO_PEAK_RELATIVE_ERROR;
        Statistics quantile =
                Statistics.newBuilder()
                          .addDiagrams( DiagramStatistic.newBuilder()
                                                        .setMetric( DiagramMetric.newBuilder()
                                                                                 .setName( MetricName.RELIABILITY_DIAGRAM )
                                                                                 .build() ) )
                          .addDiagrams( DiagramStatistic.newBuilder()
                                                        .setMetric( DiagramMetric.newBuilder()
                                                                                 .setName( MetricName.RANK_HISTOGRAM )
                                                                                 .build() ) )
                          .addScores( DoubleScoreStatistic.newBuilder()
                                                          .setMetric( DoubleScoreMetric.newBuilder()
                                                                                       .setName( MetricName.MEAN_ABSOLUTE_ERROR ) ) )
                          .addScores( DoubleScoreStatistic.newBuilder()
                                                          .setMetric( DoubleScoreMetric.newBuilder()
                                                                                       .setName( MetricName.MEAN_ERROR ) ) )
                          .addDurationScores( DurationScoreStatistic.newBuilder()
                                                                    .setMetric( DurationScoreMetric.newBuilder()
                                                                                                   .setName( p ) ) )
                          .addDurationScores( DurationScoreStatistic.newBuilder()
                                                                    .setMetric( DurationScoreMetric.newBuilder()
                                                                                                   .setName( q ) ) )
                          .addDurationDiagrams( DurationDiagramStatistic.newBuilder()
                                                                        .setMetric( DurationDiagramMetric.newBuilder()
                                                                                                         .setName( p )
                                                                                                         .build() ) )
                          .addDurationDiagrams( DurationDiagramStatistic.newBuilder()
                                                                        .setMetric( DurationDiagramMetric.newBuilder()
                                                                                                         .setName( q )
                                                                                                         .build() ) )
                          .addOneBoxPerPool( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS ) ) )
                          .addOneBoxPerPool( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE ) ) )
                          .addOneBoxPerPair( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS ) ) )
                          .addOneBoxPerPair( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE ) ) )
                          .build();

        Statistics nominal =
                Statistics.newBuilder()
                          .addDiagrams( DiagramStatistic.newBuilder()
                                                        .setMetric( DiagramMetric.newBuilder()
                                                                                 .setName( MetricName.RANK_HISTOGRAM )
                                                                                 .build() ) )
                          .addScores( DoubleScoreStatistic.newBuilder()
                                                          .setMetric( DoubleScoreMetric.newBuilder()
                                                                                       .setName( MetricName.MEAN_ABSOLUTE_ERROR ) ) )
                          .addDurationScores( DurationScoreStatistic.newBuilder()
                                                                    .setMetric( DurationScoreMetric.newBuilder()
                                                                                                   .setName( q ) ) )
                          .addDurationDiagrams( DurationDiagramStatistic.newBuilder()
                                                                        .setMetric( DurationDiagramMetric.newBuilder()
                                                                                                         .setName( p )
                                                                                                         .build() ) )
                          .addOneBoxPerPool( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE ) ) )
                          .addOneBoxPerPair( BoxplotStatistic.newBuilder()
                                                             .setMetric( BoxplotMetric.newBuilder()
                                                                                      .setName( MetricName.BOX_PLOT_OF_ERRORS ) ) )
                          .build();

        Statistics nominalTwo =
                Statistics.newBuilder()
                          .addScores( DoubleScoreStatistic.newBuilder()
                                                          .setMetric( DoubleScoreMetric.newBuilder()
                                                                                       .setName( MetricName.MEAN_ABSOLUTE_ERROR ) ) )
                          .build();

        List<Statistics> actual = BootstrapUtilities.reconcileQuantilesWithNominalStatistics( List.of( quantile ),
                                                                                              List.of( nominal,
                                                                                                       nominalTwo ) );

        assertAll( () -> assertEquals( List.of( MetricName.RANK_HISTOGRAM ),
                                       actual.stream()
                                             .flatMap( a -> a.getDiagramsList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ),
                   () -> assertEquals( List.of( MetricName.MEAN_ABSOLUTE_ERROR ),
                                       actual.stream()
                                             .flatMap( a -> a.getScoresList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ),
                   () -> assertEquals( List.of( MetricName.TIME_TO_PEAK_ERROR ),
                                       actual.stream()
                                             .flatMap( a -> a.getDurationDiagramsList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ),
                   () -> assertEquals( List.of( MetricName.TIME_TO_PEAK_RELATIVE_ERROR ),
                                       actual.stream()
                                             .flatMap( a -> a.getDurationScoresList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ),
                   () -> assertEquals( List.of( MetricName.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE ),
                                       actual.stream()
                                             .flatMap( a -> a.getOneBoxPerPoolList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ),
                   () -> assertEquals( List.of( MetricName.BOX_PLOT_OF_ERRORS ),
                                       actual.stream()
                                             .flatMap( a -> a.getOneBoxPerPairList()
                                                             .stream() )
                                             .map( d -> d.getMetric()
                                                         .getName() )
                                             .toList() ) );

    }
}
