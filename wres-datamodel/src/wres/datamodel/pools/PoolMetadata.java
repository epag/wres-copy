package wres.datamodel.pools;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import wres.datamodel.messages.MessageUtilities;
import wres.datamodel.scale.TimeScaleOuter;
import wres.datamodel.thresholds.OneOrTwoThresholds;
import wres.datamodel.thresholds.ThresholdOuter;
import wres.datamodel.time.TimeWindowOuter;
import wres.statistics.generated.Evaluation;
import wres.statistics.generated.Pool;

/**
 * An immutable store of metadata associated with {@link Pool}.
 * 
 * @author james.brown@hydrosolved.com
 */
public class PoolMetadata implements Comparable<PoolMetadata>
{

    /**
     * A description of the evaluation.
     */

    private final Evaluation evaluation;

    /**
     * A description of the pool to which the sample data belongs.
     */

    private final Pool pool;

    /**
     * Creates an instance from an {@link Evaluation} and a {@link Pool}.
     * 
     * @param evaluation the evaluation
     * @param pool the pool
     * @return an instance
     * @throws NullPointerException if either input is null.
     */

    public static PoolMetadata of( Evaluation evaluation, Pool pool )
    {
        return new PoolMetadata( evaluation, pool );
    }

    /**
     * Build a {@link PoolMetadata} object with a default {@link MeasurementUnit} of 
     * {@link MeasurementUnit#DIMENSIONLESS} and a default pool, {@link Pool#getDefaultInstance()}.
     * 
     * @return a {@link PoolMetadata} object
     */

    public static PoolMetadata of()
    {
        Evaluation evaluation = Evaluation.newBuilder()
                                          .setMeasurementUnit( MeasurementUnit.DIMENSIONLESS )
                                          .build();

        Pool pool = Pool.getDefaultInstance();

        return new PoolMetadata( evaluation, pool );
    }

    /**
     * Build a {@link PoolMetadata} object with a default {@link MeasurementUnit} of 
     * {@link MeasurementUnit#DIMENSIONLESS} and the status of the pool as a regular pool or baseline pool.
     * 
     * @param isBaselinePool is true if the pool is a baseline pool, otherwise false
     * @return a {@link PoolMetadata} object
     */

    public static PoolMetadata of( boolean isBaselinePool )
    {
        Evaluation evaluation = Evaluation.newBuilder()
                                          .setMeasurementUnit( MeasurementUnit.DIMENSIONLESS )
                                          .build();

        Pool pool = Pool.newBuilder()
                        .setIsBaselinePool( isBaselinePool )
                        .build();

        return new PoolMetadata( evaluation, pool );
    }

    /**
     * Builds a {@link PoolMetadata} from a prescribed input source and an override {@link OneOrTwoThresholds}.
     * 
     * @param input the source metadata
     * @param thresholds the thresholds
     * @return a {@link PoolMetadata} object
     * @throws NullPointerException if any required input is null
     */

    public static PoolMetadata of( PoolMetadata input, OneOrTwoThresholds thresholds )
    {
        Objects.requireNonNull( input );

        Evaluation evaluation = input.getEvaluation();

        Pool.Builder pool = input.getPool().toBuilder();

        if ( Objects.nonNull( thresholds ) )
        {
            pool.setEventThreshold( thresholds.first().getThreshold() );
            if ( thresholds.hasTwo() )
            {
                pool.setDecisionThreshold( thresholds.second().getThreshold() );
            }
        }

        return new PoolMetadata( evaluation, pool.build() );
    }

    /**
     * Builds a {@link PoolMetadata} from a prescribed input source and an override {@link TimeWindowOuter}.
     * 
     * @param input the source metadata
     * @param timeWindow the new time window
     * @return a {@link PoolMetadata} object
     * @throws NullPointerException if any required input is null
     */

    public static PoolMetadata of( PoolMetadata input, TimeWindowOuter timeWindow )
    {
        Objects.requireNonNull( input );

        Evaluation evaluation = input.getEvaluation();

        Pool.Builder pool = input.getPool().toBuilder();

        if ( Objects.nonNull( timeWindow ) )
        {
            pool.setTimeWindow( timeWindow.getTimeWindow() );
        }

        return new PoolMetadata( evaluation, pool.build() );
    }

    /**
     * Builds a {@link PoolMetadata} from a prescribed input source and an override {@link TimeScaleOuter}.
     * 
     * @param input the source metadata
     * @param timeScale the new time scale
     * @return a {@link PoolMetadata} object
     * @throws NullPointerException if the input is null
     */

    public static PoolMetadata of( PoolMetadata input, TimeScaleOuter timeScale )
    {
        Objects.requireNonNull( input );

        Evaluation evaluation = input.getEvaluation();

        Pool.Builder pool = input.getPool().toBuilder();

        if ( Objects.nonNull( timeScale ) )
        {
            pool.setTimeScale( timeScale.getTimeScale() );
        }

        return new PoolMetadata( evaluation, pool.build() );
    }

    /**
     * Builds a {@link PoolMetadata} from a prescribed input source and an override {@link TimeWindowOuter} and 
     * {@link TimeScaleOuter}.
     * 
     * @param input the source metadata
     * @param timeWindow the new time window
     * @param timeScale the new time scale
     * @return a {@link PoolMetadata} object
     * @throws NullPointerException if the input is null
     */

    public static PoolMetadata of( PoolMetadata input,
                                     TimeWindowOuter timeWindow,
                                     TimeScaleOuter timeScale )
    {
        Objects.requireNonNull( input );

        Evaluation evaluation = input.getEvaluation();

        Pool.Builder pool = input.getPool().toBuilder();

        if ( Objects.nonNull( timeScale ) )
        {
            pool.setTimeScale( timeScale.getTimeScale() );
        }

        if ( Objects.nonNull( timeWindow ) )
        {
            pool.setTimeWindow( timeWindow.getTimeWindow() );
        }

        return new PoolMetadata( evaluation, pool.build() );
    }

    /**
     * Builds a {@link PoolMetadata} from a prescribed input source and an override {@link TimeWindowOuter} and 
     * {@link OneOrTwoThresholds}.
     * 
     * @param input the source metadata
     * @param timeWindow the new time window
     * @param thresholds the thresholds
     * @return a {@link PoolMetadata} object
     * @throws NullPointerException if the input is null
     */

    public static PoolMetadata of( PoolMetadata input,
                                     TimeWindowOuter timeWindow,
                                     OneOrTwoThresholds thresholds )
    {
        Objects.requireNonNull( input );

        Evaluation evaluation = input.getEvaluation();

        Pool.Builder pool = input.getPool().toBuilder();

        if ( Objects.nonNull( thresholds ) )
        {
            pool.setEventThreshold( thresholds.first().getThreshold() );
            if ( thresholds.hasTwo() )
            {
                pool.setDecisionThreshold( thresholds.second().getThreshold() );
            }
        }

        if ( Objects.nonNull( timeWindow ) )
        {
            pool.setTimeWindow( timeWindow.getTimeWindow() );
        }

        return new PoolMetadata( evaluation, pool.build() );
    }

    /**
     * Finds the union of the input, based on the {@link TimeWindowOuter}. All components of the input must be equal, 
     * except the {@link PoolMetadata#getTimeWindow()} and {@link PoolMetadata#getThresholds()}, otherwise an 
     * exception is thrown. See also {@link TimeWindowOuter#unionOf(Set)}. No threshold information is represented in the 
     * union.
     * 
     * @param input the input metadata
     * @return the union of the input
     * @throws IllegalArgumentException if the input is empty
     * @throws NullPointerException if the input is null
     * @throws PoolMetadataException if the input contains metadata whose differences extend beyond the time windows and
     *            thresholds
     */

    public static PoolMetadata unionOf( List<PoolMetadata> input )
    {
        String nullString = "Cannot find the union of null metadata.";

        Objects.requireNonNull( input, nullString );

        if ( input.isEmpty() )
        {
            throw new IllegalArgumentException( "Cannot find the union of empty input." );
        }
        Set<TimeWindowOuter> unionWindow = new HashSet<>();

        // Test entry
        PoolMetadata test = input.get( 0 );

        // Validate for equivalence with the first entry and add window to list
        for ( PoolMetadata next : input )
        {
            Objects.requireNonNull( next, nullString );

            if ( !next.equalsWithoutTimeWindowOrThresholds( test ) )
            {
                throw new PoolMetadataException( "Only the time window and thresholds can differ when finding the "
                                                   + "union of metadata." );
            }
            if ( next.hasTimeWindow() )
            {
                unionWindow.add( next.getTimeWindow() );
            }
        }

        // Remove any threshold information from the result
        test = PoolMetadata.of( test, (OneOrTwoThresholds) null );

        if ( !unionWindow.isEmpty() )
        {
            test = PoolMetadata.of( test, TimeWindowOuter.unionOf( unionWindow ) );
        }
        return test;
    }

    @Override
    public int compareTo( PoolMetadata input )
    {
        Objects.requireNonNull( input, "Specify non-null metadata for comparison." );

        // Check measurement units, which are always available
        int returnMe = MessageUtilities.compare( this.getEvaluation(), input.getEvaluation() );

        if ( returnMe != 0 )
        {
            return returnMe;
        }

        return MessageUtilities.compare( this.getPool(), input.getPool() );
    }

    @Override
    public boolean equals( final Object o )
    {
        if ( ! ( o instanceof PoolMetadata ) )
        {
            return false;
        }
        PoolMetadata p = (PoolMetadata) o;
        return Objects.equals( this.getEvaluation(), p.getEvaluation() )
               && Objects.equals( this.getPool(), p.getPool() );
    }

    @Override
    public int hashCode()
    {
        return Objects.hash( this.getEvaluation(),
                             this.getPool() );
    }

    @Override
    public String toString()
    {
        // Use a limited subset of the most important/useful descriptors
        Evaluation evaluation = this.getEvaluation();
        Pool pool = this.getPool();
        
        return new ToStringBuilder( this, ToStringStyle.SHORT_PREFIX_STYLE )
                                                                            .append( "leftDataName",
                                                                                     evaluation.getLeftDataName() )
                                                                            .append( "rightDataName",
                                                                                     evaluation.getRightDataName() )
                                                                            .append( "baselineDataName",
                                                                                     evaluation.getBaselineDataName() )
                                                                            .append( "leftVariableName",
                                                                                     evaluation.getLeftVariableName() )
                                                                            .append( "rightVariableName",
                                                                                     evaluation.getRightVariableName() )
                                                                            .append( "baselineVariableName",
                                                                                     evaluation.getBaselineVariableName() )
                                                                            .append( "isBaselinePool",
                                                                                     pool.getIsBaselinePool() )
                                                                            .append( "geometryTuples",
                                                                                     pool.getGeometryTuplesList() )
                                                                            .append( "timeWindow",
                                                                                     this.getTimeWindow() )
                                                                            .append( "thresholds",
                                                                                     this.getThresholds() )
                                                                            .append( "timeScale",
                                                                                     this.getTimeScale() )
                                                                            .append( "measurementUnit",
                                                                                     this.getMeasurementUnit() )
                                                                            .build();
    }

    /**
     * Returns <code>true</code> if {@link #getTimeWindow()} returns non-null, otherwise <code>false</code>.
     * 
     * @return true if {@link #getTimeWindow()} returns non-null, false otherwise.
     */
    public boolean hasTimeWindow()
    {
        return Objects.nonNull( this.getTimeWindow() );
    }

    /**
     * Returns <code>true</code> if {@link #getThresholds()} returns non-null, otherwise <code>false</code>.
     * 
     * @return true if {@link #getThresholds()} returns non-null, false otherwise.
     */
    public boolean hasThresholds()
    {
        return Objects.nonNull( this.getThresholds() );
    }

    /**
     * Returns <code>true</code> if {@link #getTimeScale()} returns non-null, otherwise <code>false</code>.
     * 
     * @return true if {@link #getTimeScale()} returns non-null, false otherwise.
     */
    public boolean hasTimeScale()
    {
        return Objects.nonNull( this.getTimeScale() );
    }

    /**
     * Returns <code>true</code> if the input is equal to the current {@link PoolMetadata} without considering the 
     * {@link #getTimeWindow()} or {@link #getThresholds()}.
     * 
     * @param input the input metadata
     * @return true if the input is equal to the current metadata, without considering the time window or thresholds
     */
    public boolean equalsWithoutTimeWindowOrThresholds( final PoolMetadata input )
    {
        if ( Objects.isNull( input ) )
        {
            return false;
        }

        // Adjust the pools to remove the time window and thresholds
        Pool adjustedPoolThis = this.getPool()
                                    .toBuilder()
                                    .clearTimeWindow()
                                    .clearEventThreshold()
                                    .clearDecisionThreshold()
                                    .build();

        Pool adjustedPoolIn = input.getPool()
                                   .toBuilder()
                                   .clearTimeWindow()
                                   .clearEventThreshold()
                                   .clearDecisionThreshold()
                                   .build();

        return Objects.equals( input.getEvaluation(), this.getEvaluation() )
               && Objects.equals( adjustedPoolIn, adjustedPoolThis );
    }

    /**
     * Returns the measurement unit associated with the metric.
     * 
     * @return the measurement unit
     */

    public MeasurementUnit getMeasurementUnit()
    {
        String unit = this.getEvaluation().getMeasurementUnit();
        return MeasurementUnit.of( unit );
    }

    /**
     * Returns a {@link TimeWindowOuter} associated with the metadata or null.
     * 
     * @return a time window or null
     */

    public TimeWindowOuter getTimeWindow()
    {
        TimeWindowOuter outer = null;

        if ( this.getPool().hasTimeWindow() )
        {
            wres.statistics.generated.TimeWindow window = this.getPool()
                                                              .getTimeWindow();
            outer = new TimeWindowOuter.Builder( window ).build();
        }

        return outer;
    }

    /**
     * Returns a {@link OneOrTwoThresholds} associated with the metadata or null.
     * 
     * @return a set of thresholds or null
     */

    public OneOrTwoThresholds getThresholds()
    {
        OneOrTwoThresholds thresholds = null;

        if ( this.getPool().hasEventThreshold() )
        {
            wres.statistics.generated.Threshold event = this.getPool()
                                                            .getEventThreshold();
            ThresholdOuter eventOuter = new ThresholdOuter.Builder( event ).build();
            ThresholdOuter decisionOuter = null;

            if ( this.getPool().hasDecisionThreshold() )
            {
                wres.statistics.generated.Threshold decision = this.getPool()
                                                                   .getDecisionThreshold();
                decisionOuter = new ThresholdOuter.Builder( decision ).build();
            }

            thresholds = OneOrTwoThresholds.of( eventOuter, decisionOuter );
        }

        return thresholds;
    }

    /**
     * Returns a {@link TimeScaleOuter} associated with the metadata or null.
     * 
     * @return the time scale or null
     */

    public TimeScaleOuter getTimeScale()
    {
        TimeScaleOuter outer = null;
        if ( this.getPool().hasTimeScale() )
        {
            outer = TimeScaleOuter.of( this.getPool().getTimeScale() );
        }

        return outer;
    } 

    /**
     * Returns the evaluation description.
     * 
     * @return the evaluation description.
     */

    public Evaluation getEvaluation()
    {
        return this.evaluation;
    }

    /**
     * Returns the pool description.
     * 
     * @return the pool description.
     */

    public Pool getPool()
    {
        return this.pool;
    }

    /**
     * Hidden constructor.
     * 
     * @param builder the builder
     * @throws NullPointerException if either input is null or the measurement unit is not set
     */

    private PoolMetadata( Evaluation evaluation, Pool pool )
    {
        Objects.requireNonNull( evaluation );
        Objects.requireNonNull( pool );

        this.evaluation = evaluation;
        this.pool = pool;

        this.validate();
    }

    /**
     * Validate the input.
     */

    private void validate()
    {
        String unit = this.getEvaluation().getMeasurementUnit();

        if ( unit.isBlank() )
        {
            throw new IllegalArgumentException( "Specify a valid measurement unit from which to build the metadata." );
        }
    }

}