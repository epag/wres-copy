package wres.metrics.ensemble;

import java.util.Objects;

import org.apache.commons.lang3.tuple.Pair;

import wres.datamodel.types.Ensemble;
import wres.config.MetricConstants;
import wres.datamodel.pools.MeasurementUnit;
import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolException;
import wres.datamodel.statistics.DoubleScoreStatisticOuter;
import wres.metrics.FunctionFactory;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent;
import wres.statistics.generated.DoubleScoreStatistic.DoubleScoreStatisticComponent;

/**
 * <p>
 * The Continuous Ranked Probability Skill Score (CRPSS) measures the reduction in the 
 * {@link ContinuousRankedProbabilityScore} associated with one set of predictions when compared to another. The perfect
 * score is 1.0. 
 * </p>
 *
 * @author James Brown
 */
public class ContinuousRankedProbabilitySkillScore extends ContinuousRankedProbabilityScore
{

    /**
     * Basic description of the metric.
     */

    public static final DoubleScoreMetric BASIC_METRIC = DoubleScoreMetric.newBuilder()
                                                                          .setName( MetricName.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE )
                                                                          .build();

    /**
     * Main score component.
     */

    public static final DoubleScoreMetricComponent MAIN =
            DoubleScoreMetricComponent.newBuilder()
                                      .setMinimum( MetricConstants.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE.getMinimum() )
                                      .setMaximum( MetricConstants.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE.getMaximum() )
                                      .setOptimum( MetricConstants.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE.getOptimum() )
                                      .setName( MetricName.MAIN )
                                      .setUnits( MeasurementUnit.DIMENSIONLESS )
                                      .build();

    /**
     * Full description of the metric.
     */

    public static final DoubleScoreMetric METRIC = DoubleScoreMetric.newBuilder()
                                                                    .addComponents(
                                                                            ContinuousRankedProbabilitySkillScore.MAIN )
                                                                    .setName( MetricName.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE )
                                                                    .build();

    /**
     * Returns an instance.
     *
     * @return an instance
     */

    public static ContinuousRankedProbabilitySkillScore of()
    {
        return new ContinuousRankedProbabilitySkillScore();
    }

    @Override
    public DoubleScoreStatisticOuter apply( Pool<Pair<Double, Ensemble>> pool )
    {
        if ( Objects.isNull( pool ) )
        {
            throw new PoolException( "Specify non-null input to the '" + this + "'." );
        }
        if ( !pool.hasBaseline() )
        {
            throw new PoolException( "Specify a non-null baseline for the '" + this + "'." );
        }
        // CRPSS, currently without decomposition
        // TODO: implement the decomposition
        double numerator = super.apply( pool )
                                .getComponent( MetricConstants.MAIN )
                                .getStatistic()
                                .getValue();
        double denominator = super.apply( pool.getBaselineData() )
                                  .getComponent( MetricConstants.MAIN )
                                  .getStatistic()
                                  .getValue();

        double result = FunctionFactory.skill()
                                       .applyAsDouble( numerator, denominator );

        DoubleScoreStatisticComponent component =
                DoubleScoreStatisticComponent.newBuilder()
                                             .setMetric( ContinuousRankedProbabilitySkillScore.MAIN )
                                             .setValue( result )
                                             .build();
        DoubleScoreStatistic score =
                DoubleScoreStatistic.newBuilder()
                                    .setMetric( ContinuousRankedProbabilitySkillScore.BASIC_METRIC )
                                    .addStatistics( component )
                                    .build();

        return DoubleScoreStatisticOuter.of( score, pool.getMetadata() );
    }

    @Override
    public MetricConstants getMetricName()
    {
        return MetricConstants.CONTINUOUS_RANKED_PROBABILITY_SKILL_SCORE;
    }

    @Override
    public boolean isProper()
    {
        return false;
    }

    @Override
    public boolean isStrictlyProper()
    {
        return false;
    }

    @Override
    public boolean hasRealUnits()
    {
        return false;
    }

    /**
     * Hidden constructor.
     */

    private ContinuousRankedProbabilitySkillScore()
    {
        super();
    }
}
