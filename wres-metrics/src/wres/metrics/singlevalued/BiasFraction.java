package wres.metrics.singlevalued;

import java.util.Objects;
import java.util.concurrent.atomic.DoubleAdder;

import org.apache.commons.lang3.tuple.Pair;

import wres.datamodel.metrics.MetricConstants;
import wres.datamodel.metrics.MetricConstants.MetricGroup;
import wres.datamodel.pools.MeasurementUnit;
import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolException;
import wres.datamodel.statistics.DoubleScoreStatisticOuter;
import wres.metrics.DoubleErrorFunction;
import wres.metrics.FunctionFactory;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent.ComponentName;
import wres.statistics.generated.DoubleScoreStatistic.DoubleScoreStatisticComponent;

/**
 * Computes the mean error of a single-valued prediction as a fraction of the mean observed value.
 * 
 * @author James Brown
 */
public class BiasFraction extends DoubleErrorScore<Pool<Pair<Double, Double>>>
{

    /**
     * Basic description of the metric.
     */

    public static final DoubleScoreMetric BASIC_METRIC = DoubleScoreMetric.newBuilder()
                                                                          .setName( MetricName.BIAS_FRACTION )
                                                                          .build();

    /**
     * Main score component.
     */

    public static final DoubleScoreMetricComponent MAIN = DoubleScoreMetricComponent.newBuilder()
                                                                                    .setMinimum( Double.NEGATIVE_INFINITY )
                                                                                    .setMaximum( Double.POSITIVE_INFINITY )
                                                                                    .setOptimum( 0 )
                                                                                    .setName( ComponentName.MAIN )
                                                                                    .setUnits( MeasurementUnit.DIMENSIONLESS )
                                                                                    .build();

    /**
     * Full description of the metric.
     */

    public static final DoubleScoreMetric METRIC_INNER = DoubleScoreMetric.newBuilder()
                                                                          .addComponents( BiasFraction.MAIN )
                                                                          .setName( MetricName.BIAS_FRACTION )
                                                                          .build();

    /**
     * Returns an instance.
     * 
     * @return an instance
     */

    public static BiasFraction of()
    {
        return new BiasFraction();
    }

    @Override
    public DoubleScoreStatisticOuter apply( Pool<Pair<Double, Double>> s )
    {
        if ( Objects.isNull( s ) )
        {
            throw new PoolException( "Specify non-null input to the '" + this + "'." );
        }

        DoubleAdder left = new DoubleAdder();
        DoubleAdder right = new DoubleAdder();
        DoubleErrorFunction error = FunctionFactory.error();
        s.get().forEach( pair -> {
            left.add( error.applyAsDouble( pair ) );
            right.add( pair.getLeft() );
        } );
        double result = left.sum() / right.sum();

        //Set NaN if not finite
        if ( !Double.isFinite( result ) )
        {
            result = Double.NaN;
        }

        DoubleScoreStatisticComponent component = DoubleScoreStatisticComponent.newBuilder()
                                                                               .setMetric( BiasFraction.MAIN )
                                                                               .setValue( result )
                                                                               .build();

        DoubleScoreStatistic score =
                DoubleScoreStatistic.newBuilder()
                                    .setMetric( BiasFraction.BASIC_METRIC )
                                    .addStatistics( component )
                                    .build();

        return DoubleScoreStatisticOuter.of( score, s.getMetadata() );
    }

    @Override
    public MetricConstants getMetricName()
    {
        return MetricConstants.BIAS_FRACTION;
    }

    @Override
    public boolean isDecomposable()
    {
        return false;
    }

    @Override
    public MetricGroup getScoreOutputGroup()
    {
        return MetricGroup.NONE;
    }

    @Override
    public boolean hasRealUnits()
    {
        return false;
    }

    /**
     * Hidden constructor.
     */

    private BiasFraction()
    {
        super( BiasFraction.METRIC_INNER );
    }

}