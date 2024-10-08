package wres.metrics.categorical;

import org.apache.commons.lang3.tuple.Pair;

import wres.config.MetricConstants;
import wres.datamodel.pools.Pool;
import wres.datamodel.statistics.DoubleScoreStatisticOuter;
import wres.metrics.FunctionFactory;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent;
import wres.statistics.generated.DoubleScoreStatistic.DoubleScoreStatisticComponent;

/**
 * The Probability of Detection (PoD) measures the fraction of observed occurrences that were hits.
 *
 * @author James Brown
 */
public class ProbabilityOfDetection extends ContingencyTableScore
{

    /**
     * Basic description of the metric.
     */

    public static final DoubleScoreMetric BASIC_METRIC = DoubleScoreMetric.newBuilder()
                                                                          .setName( MetricName.PROBABILITY_OF_DETECTION )
                                                                          .build();

    /**
     * Main score component.
     */

    public static final DoubleScoreMetricComponent MAIN =
            DoubleScoreMetricComponent.newBuilder()
                                      .setMinimum( MetricConstants.PROBABILITY_OF_DETECTION.getMinimum() )
                                      .setMaximum( MetricConstants.PROBABILITY_OF_DETECTION.getMaximum() )
                                      .setOptimum( MetricConstants.PROBABILITY_OF_DETECTION.getOptimum() )
                                      .setName( MetricName.MAIN )
                                      .setUnits( "PROBABILITY" )
                                      .build();

    /**
     * Full description of the metric.
     */

    public static final DoubleScoreMetric METRIC = DoubleScoreMetric.newBuilder()
                                                                    .addComponents( ProbabilityOfDetection.MAIN )
                                                                    .setName( MetricName.PROBABILITY_OF_DETECTION )
                                                                    .build();

    /**
     * Returns an instance.
     *
     * @return an instance
     */

    public static ProbabilityOfDetection of()
    {
        return new ProbabilityOfDetection();
    }

    @Override
    public DoubleScoreStatisticOuter apply( final Pool<Pair<Boolean, Boolean>> pool )
    {
        return applyIntermediate( this.getIntermediate( pool ), pool );
    }

    @Override
    public DoubleScoreStatisticOuter applyIntermediate( final DoubleScoreStatisticOuter output,
                                                        Pool<Pair<Boolean, Boolean>> pool )
    {
        this.is2x2ContingencyTable( output, this );

        double tP = output.getComponent( MetricConstants.TRUE_POSITIVES )
                          .getStatistic()
                          .getValue();

        double fN = output.getComponent( MetricConstants.FALSE_NEGATIVES )
                          .getStatistic()
                          .getValue();

        double result = FunctionFactory.finiteOrMissing()
                                       .applyAsDouble( tP / ( tP + fN ) );

        DoubleScoreStatisticComponent component = DoubleScoreStatisticComponent.newBuilder()
                                                                               .setMetric( ProbabilityOfDetection.MAIN )
                                                                               .setValue( result )
                                                                               .build();
        DoubleScoreStatistic score =
                DoubleScoreStatistic.newBuilder()
                                    .setMetric( ProbabilityOfDetection.BASIC_METRIC )
                                    .addStatistics( component )
                                    .build();

        return DoubleScoreStatisticOuter.of( score, output.getPoolMetadata() );
    }

    @Override
    public MetricConstants getMetricName()
    {
        return MetricConstants.PROBABILITY_OF_DETECTION;
    }

    /**
     * Hidden constructor.
     */

    private ProbabilityOfDetection()
    {
        super();
    }
}
