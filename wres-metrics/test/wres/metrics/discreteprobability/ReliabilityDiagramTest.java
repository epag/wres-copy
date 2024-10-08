package wres.metrics.discreteprobability;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.tuple.Pair;
import org.junit.Before;
import org.junit.Test;

import wres.datamodel.types.Probability;
import wres.config.MetricConstants;
import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolException;
import wres.datamodel.pools.PoolMetadata;
import wres.datamodel.statistics.DiagramStatisticOuter;
import wres.metrics.Boilerplate;
import wres.metrics.MetricTestDataFactory;
import wres.statistics.generated.DiagramStatistic;
import wres.statistics.generated.DiagramStatistic.DiagramStatisticComponent;

/**
 * Tests the {@link ReliabilityDiagram}.
 *
 * @author James Brown
 */
public final class ReliabilityDiagramTest
{

    /**
     * Default instance of a {@link ReliabilityDiagram}.
     */

    private ReliabilityDiagram rel;

    @Before
    public void setupBeforeEachTest()
    {
        this.rel = ReliabilityDiagram.of();
    }

    @Test
    public void testApply()
    {
        //Generate some data
        Pool<Pair<Probability, Probability>> input = MetricTestDataFactory.getDiscreteProbabilityPairsThree();

        //Metadata for the output
        PoolMetadata m1 = Boilerplate.getPoolMetadata( false );

        //Check the results
        final DiagramStatisticOuter actual = rel.apply( input );
        List<Double> expectedFProb = List.of( 0.05490196078431369,
                                              0.19999999999999984,
                                              0.3000000000000002,
                                              0.40000000000000013,
                                              0.5,
                                              0.5999999999999998,
                                              0.6999999999999996,
                                              0.8000000000000003,
                                              0.9000000000000002,
                                              1.0 );
        List<Double> expectedOProb = List.of( 0.0196078431372549,
                                              0.0847457627118644,
                                              0.12195121951219512,
                                              0.21052631578947367,
                                              0.36363636363636365,
                                              0.2727272727272727,
                                              0.47058823529411764,
                                              0.6666666666666666,
                                              0.7272727272727273,
                                              0.8461538461538461 );
        List<Double> expectedSample = List.of( 102.0,
                                               59.0,
                                               41.0,
                                               19.0,
                                               22.0,
                                               22.0,
                                               34.0,
                                               24.0,
                                               11.0,
                                               13.0 );

        DiagramStatisticComponent forecastProbability =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.FORECAST_PROBABILITY )
                                         .addAllValues( expectedFProb )
                                         .build();

        DiagramStatisticComponent observedFrequency =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.OBSERVED_RELATIVE_FREQUENCY )
                                         .addAllValues( expectedOProb )
                                         .build();

        DiagramStatisticComponent sampleSize =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.SAMPLE_SIZE )
                                         .addAllValues( expectedSample )
                                         .build();

        DiagramStatistic statistic = DiagramStatistic.newBuilder()
                                                     .addStatistics( forecastProbability )
                                                     .addStatistics( observedFrequency )
                                                     .addStatistics( sampleSize )
                                                     .setMetric( ReliabilityDiagram.BASIC_METRIC )
                                                     .build();

        DiagramStatisticOuter expected = DiagramStatisticOuter.of( statistic, m1 );

        assertEquals( expected, actual );
    }

    @Test
    public void testApplySomeBinsHaveZeroSamples()
    {
        //Generate some data
        List<Pair<Probability, Probability>> data = new ArrayList<>();
        data.add( Pair.of( Probability.ONE, Probability.of( 0.8775510204081632 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.6326530612244898 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.8163265306122449 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.9591836734693877 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.8979591836734694 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.9795918367346939 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 1.0 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.9183673469387755 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.8163265306122449 ) ) );
        data.add( Pair.of( Probability.ONE, Probability.of( 0.7755102040816326 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.3469387755102041 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.24489795918367346 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.20408163265306123 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.10204081632653061 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.08163265306122448 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.12244897959183673 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.0 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.0 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.0 ) ) );
        data.add( Pair.of( Probability.ZERO, Probability.of( 0.0 ) ) );

        Pool<Pair<Probability, Probability>> input = Pool.of( data,
                                                              PoolMetadata.of() );

        //Check the results       
        DiagramStatisticOuter actual = rel.apply( input );
        List<Double> expectedFProb = List.of( 0.013605442176870748,
                                              0.11224489795918367,
                                              0.22448979591836735,
                                              0.3469387755102041,
                                              Double.NaN,
                                              Double.NaN,
                                              0.6326530612244898,
                                              0.7755102040816326,
                                              0.8520408163265306,
                                              0.989010989010989 );
        List<Double> expectedOProb = List.of( 0.16666666666666666,
                                              0.0,
                                              0.0,
                                              0.0,
                                              Double.NaN,
                                              Double.NaN,
                                              1.0,
                                              1.0,
                                              1.0,
                                              1.0 );
        List<Double> expectedSample = List.of( 6.0,
                                               2.0,
                                               2.0,
                                               1.0,
                                               0.0,
                                               0.0,
                                               1.0,
                                               1.0,
                                               4.0,
                                               13.0 );

        DiagramStatisticComponent forecastProbability =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.FORECAST_PROBABILITY )
                                         .addAllValues( expectedFProb )
                                         .build();

        DiagramStatisticComponent observedFrequency =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.OBSERVED_RELATIVE_FREQUENCY )
                                         .addAllValues( expectedOProb )
                                         .build();

        DiagramStatisticComponent sampleSize =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.SAMPLE_SIZE )
                                         .addAllValues( expectedSample )
                                         .build();

        DiagramStatistic expected = DiagramStatistic.newBuilder()
                                                    .addStatistics( forecastProbability )
                                                    .addStatistics( observedFrequency )
                                                    .addStatistics( sampleSize )
                                                    .setMetric( ReliabilityDiagram.BASIC_METRIC )
                                                    .build();

        assertEquals( expected, actual.getStatistic() );
    }

    @Test
    public void testApplyWithNoData()
    {
        // Generate empty data
        Pool<Pair<Probability, Probability>> input = Pool.of( List.of(), PoolMetadata.of() );

        DiagramStatisticOuter actual = rel.apply( input );

        List<Double> source = List.of( Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN,
                                       Double.NaN );

        List<Double> sourceSample = List.of( 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 );

        DiagramStatisticComponent forecastProbability =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.FORECAST_PROBABILITY )
                                         .addAllValues( source )
                                         .build();

        DiagramStatisticComponent observedFrequency =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.OBSERVED_RELATIVE_FREQUENCY )
                                         .addAllValues( source )
                                         .build();

        DiagramStatisticComponent sampleSize =
                DiagramStatisticComponent.newBuilder()
                                         .setMetric( ReliabilityDiagram.SAMPLE_SIZE )
                                         .addAllValues( sourceSample )
                                         .build();

        DiagramStatistic expected = DiagramStatistic.newBuilder()
                                                    .addStatistics( forecastProbability )
                                                    .addStatistics( observedFrequency )
                                                    .addStatistics( sampleSize )
                                                    .setMetric( ReliabilityDiagram.BASIC_METRIC )
                                                    .build();

        assertEquals( expected, actual.getStatistic() );
    }

    @Test
    public void testGetName()
    {
        assertEquals( MetricConstants.RELIABILITY_DIAGRAM.toString(), this.rel.getMetricNameString() );
    }

    @Test
    public void testExceptionOnNullInput()
    {
        PoolException actual = assertThrows( PoolException.class,
                                             () -> this.rel.apply( null ) );

        assertEquals( "Specify non-null input to the '" + this.rel.getMetricNameString() + "'.", actual.getMessage() );
    }


}
