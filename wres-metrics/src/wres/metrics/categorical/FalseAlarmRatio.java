package wres.metrics.categorical;

import org.apache.commons.lang3.tuple.Pair;

import wres.datamodel.metrics.MetricConstants;
import wres.datamodel.pools.MeasurementUnit;
import wres.datamodel.pools.Pool;
import wres.datamodel.statistics.DoubleScoreStatisticOuter;
import wres.metrics.FunctionFactory;
import wres.statistics.generated.DoubleScoreMetric;
import wres.statistics.generated.DoubleScoreStatistic;
import wres.statistics.generated.MetricName;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent;
import wres.statistics.generated.DoubleScoreMetric.DoubleScoreMetricComponent.ComponentName;
import wres.statistics.generated.DoubleScoreStatistic.DoubleScoreStatisticComponent;

/**
 * Measures the fraction of observed occurrences that were incorrectly predicted. A ratio of 0.0 indicates that all
 * observed occurrences were predicted correctly and a ratio of 1.0 indicates that all observed occurrences were 
 * predicted incorrectly.
 * 
 * @author James Brown
 */
public class FalseAlarmRatio extends ContingencyTableScore
{
    /** Basic description of the metric. */
    public static final DoubleScoreMetric BASIC_METRIC = DoubleScoreMetric.newBuilder()
                                                                          .setName( MetricName.FALSE_ALARM_RATIO )
                                                                          .build();

    /** Main score component. */
    public static final DoubleScoreMetricComponent MAIN = DoubleScoreMetricComponent.newBuilder()
                                                                                    .setMinimum( 0 )
                                                                                    .setMaximum( 1 )
                                                                                    .setOptimum( 0 )
                                                                                    .setName( ComponentName.MAIN )
                                                                                    .setUnits( MeasurementUnit.DIMENSIONLESS )
                                                                                    .build();

    /** Full description of the metric. */
    public static final DoubleScoreMetric METRIC = DoubleScoreMetric.newBuilder()
                                                                    .addComponents( FalseAlarmRatio.MAIN )
                                                                    .setName( MetricName.FALSE_ALARM_RATIO )
                                                                    .build();

    /**
     * Returns an instance.
     * 
     * @return an instance
     */

    public static FalseAlarmRatio of()
    {
        return new FalseAlarmRatio();
    }

    @Override
    public DoubleScoreStatisticOuter apply( final Pool<Pair<Boolean, Boolean>> s )
    {
        return aggregate( this.getIntermediateStatistic( s ), s );
    }

    @Override
    public DoubleScoreStatisticOuter aggregate( final DoubleScoreStatisticOuter output, 
                                                Pool<Pair<Boolean, Boolean>> pool )
    {
        this.is2x2ContingencyTable( output, this );

        double tP = output.getComponent( MetricConstants.TRUE_POSITIVES )
                          .getData()
                          .getValue();

        double fP = output.getComponent( MetricConstants.FALSE_POSITIVES )
                          .getData()
                          .getValue();
        
        final double value =
                FunctionFactory.finiteOrMissing().applyAsDouble( ( fP ) / ( tP + fP ) );

        DoubleScoreStatisticComponent component = DoubleScoreStatisticComponent.newBuilder()
                                                                               .setMetric( FalseAlarmRatio.MAIN )
                                                                               .setValue( value )
                                                                               .build();
        DoubleScoreStatistic score = DoubleScoreStatistic.newBuilder()
                                                         .setMetric( FalseAlarmRatio.BASIC_METRIC )
                                                         .addStatistics( component )
                                                         .build();

        return DoubleScoreStatisticOuter.of( score, output.getMetadata() );
    }

    @Override
    public MetricConstants getMetricName()
    {
        return MetricConstants.FALSE_ALARM_RATIO;
    }

    /**
     * Hidden constructor.
     */

    private FalseAlarmRatio()
    {
        super();
    }
}