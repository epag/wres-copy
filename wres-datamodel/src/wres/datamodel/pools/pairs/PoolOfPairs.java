package wres.datamodel.pools.pairs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.StringJoiner;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import wres.datamodel.VectorOfDoubles;
import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolException;
import wres.datamodel.pools.PoolMetadata;
import wres.datamodel.time.Event;
import wres.datamodel.time.TimeSeries;

import org.apache.commons.lang3.tuple.Pair;

/**
 * <p>A pool of pairs that additionally offers a time-series view of the pairs.
 * 
 * @author james.brown@hydrosolved.com
 */
public class PoolOfPairs<L, R> implements Pool<Pair<L, R>>, Supplier<List<TimeSeries<Pair<L, R>>>>
{

    /**
     * Warning for null input.
     */

    private static final String NULL_INPUT = "Specify non-null time-series input.";

    /**
     * Main pairs.
     */

    private final List<TimeSeries<Pair<L, R>>> main;

    /**
     * Baseline pairs.
     */

    private final List<TimeSeries<Pair<L, R>>> baseline;

    /**
     * Metadata associated with the verification pairs.
     */

    private final PoolMetadata mainMeta;

    /**
     * Metadata associated with the baseline verification pairs (may be null).
     */

    private final PoolMetadata baselineMeta;

    /**
     * Climatological data.
     */

    private final VectorOfDoubles climatology;

    @Override
    public boolean hasBaseline()
    {
        return Objects.nonNull( this.baseline );
    }

    @Override
    public boolean hasClimatology()
    {
        return Objects.nonNull( this.climatology );
    }

    @Override
    public PoolOfPairs<L, R> getBaselineData()
    {
        // TODO: return an empty baseline in all cases.
        if ( !this.hasBaseline() )
        {
            return null;
        }

        Builder<L, R> builder = new Builder<>();
        builder.setMetadata( this.baselineMeta ).setClimatology( this.climatology );

        for ( TimeSeries<Pair<L, R>> next : this.baseline )
        {
            builder.addTimeSeries( next );
        }

        return builder.build();
    }

    @Override
    public List<TimeSeries<Pair<L, R>>> get()
    {
        return this.main; //Immutable on construction
    }

    @Override
    public String toString()
    {
        StringJoiner first = new StringJoiner( "" );
        first.add( this.getClass().getSimpleName() + "@" + this.hashCode() + ": " );
        StringJoiner joiner = new StringJoiner( System.lineSeparator() );

        for ( TimeSeries<Pair<L, R>> nextSeries : this.main )
        {
            joiner.add( nextSeries.toString() );
        }

        return first.merge( joiner ).toString();
    }

    @Override
    public List<Pair<L, R>> getRawData()
    {
        List<Pair<L, R>> rawData = new ArrayList<>();

        List<TimeSeries<Pair<L, R>>> data = this.get();

        for ( TimeSeries<Pair<L, R>> next : data )
        {
            rawData.addAll( next.getEvents()
                                .stream()
                                .map( Event::getValue )
                                .collect( Collectors.toList() ) );
        }

        return Collections.unmodifiableList( rawData );
    }

    @Override
    public PoolMetadata getMetadata()
    {
        return this.mainMeta;
    }

    @Override
    public VectorOfDoubles getClimatology()
    {
        return this.climatology;
    }

    @Override
    public boolean equals( Object o )
    {
        if ( ! ( o instanceof PoolOfPairs ) )
        {
            return false;
        }

        if ( this == o )
        {
            return true;
        }

        PoolOfPairs<?, ?> in = (PoolOfPairs<?, ?>) o;

        // Required elements
        boolean returnMe = this.getRawData().equals( in.getRawData() )
                           && this.getMetadata().equals( in.getMetadata() )
                           && this.hasClimatology() == in.hasClimatology()
                           && this.hasBaseline() == in.hasBaseline();

        if ( !returnMe )
        {
            return false;
        }

        if ( this.hasBaseline() && !this.baseline.equals( in.baseline ) )
        {
            return false;
        }

        return !this.hasClimatology() || this.getClimatology().equals( in.getClimatology() );

    }

    @Override
    public int hashCode()
    {
        return Objects.hash( this.getMetadata(),
                             this.baselineMeta,
                             this.getRawData(),
                             this.baseline,
                             this.getClimatology() );

    }

    /**
     * A builder to build the time-series.
     */

    public static class Builder<L, R>
    {

        /**
         * The raw data.
         */

        private List<TimeSeries<Pair<L, R>>> main = new ArrayList<>();

        /**
         * The raw data for the baseline
         */

        private List<TimeSeries<Pair<L, R>>> baseline = new ArrayList<>();

        /**
         * Metadata associated with the verification pairs.
         */

        private PoolMetadata mainMeta;

        /**
         * Metadata associated with the baseline verification pairs (may be null).
         */

        private PoolMetadata baselineMeta;

        /**
         * Climatological data.
         */

        private VectorOfDoubles climatology;

        /**
         * Adds a time-series to the builder.
         * 
         * @param timeSeries the time-series
         * @return the builder
         * @throws NullPointerException if the input is null
         */

        public Builder<L, R> addTimeSeries( TimeSeries<Pair<L, R>> timeSeries )
        {
            Objects.requireNonNull( timeSeries, NULL_INPUT );

            this.main.add( timeSeries );

            return this;
        }

        /**
         * Adds a time-series to the builder for a baseline dataset.
         * 
         * @param timeSeries the time-series
         * @return the builder
         * @throws NullPointerException if the input is null
         */

        public Builder<L, R> addTimeSeriesForBaseline( TimeSeries<Pair<L, R>> timeSeries )
        {
            Objects.requireNonNull( timeSeries, NULL_INPUT );

            this.baseline.add( timeSeries );

            return this;
        }

        /**
         * Adds a pool of pairs to the builder.
         * 
         * @param poolOfPairs the pool of pairs
         * @return the builder
         * @throws NullPointerException if the input is null
         */

        public Builder<L, R> addPoolOfPairs( PoolOfPairs<L, R> poolOfPairs )
        {
            Objects.requireNonNull( poolOfPairs, NULL_INPUT );

            this.main.addAll( poolOfPairs.get() );
            this.mainMeta = poolOfPairs.mainMeta;
            this.climatology = poolOfPairs.climatology;

            if ( poolOfPairs.hasBaseline() )
            {
                PoolOfPairs<L, R> base = poolOfPairs.getBaselineData();
                this.baseline.addAll( base.get() );
                this.baselineMeta = poolOfPairs.baselineMeta;
            }

            return this;
        }

        /**
         * Sets the metadata associated with the input.
         * 
         * @param mainMeta the metadata
         * @return the builder
         */

        public Builder<L, R> setMetadata( PoolMetadata mainMeta )
        {
            this.mainMeta = mainMeta;

            return this;
        }

        /**
         * Sets the metadata associated with the baseline input.
         * 
         * @param baselineMeta the metadata for the baseline
         * @return the builder
         */

        public Builder<L, R> setMetadataForBaseline( PoolMetadata baselineMeta )
        {
            this.baselineMeta = baselineMeta;

            return this;
        }

        /**
         * Sets a climatological dataset.
         * 
         * @param climatology the climatology
         * @return the builder
         */

        public Builder<L, R> setClimatology( VectorOfDoubles climatology )
        {
            this.climatology = climatology;

            return this;
        }

        /**
         * Builds a time-series.
         * 
         * @return a time-series
         */

        public PoolOfPairs<L, R> build()
        {
            return new PoolOfPairs<>( this );
        }

    }

    /**
     * Construct the pairs with a builder.
     * 
     * @param b the builder
     * @throws PoolException if the pairs are invalid
     */

    PoolOfPairs( final Builder<L, R> b )
    {
        //Ensure safe types
        this.main = Collections.unmodifiableList( b.main );
        this.mainMeta = b.mainMeta;
        this.climatology = b.climatology;

        // Always set baseline metadata because null-status is validated
        this.baselineMeta = b.baselineMeta;

        // Baseline data?
        if ( Objects.nonNull( b.baselineMeta ) )
        {
            this.baseline = Collections.unmodifiableList( b.baseline );
        }
        else
        {
            this.baseline = null;
        }

        //Validate
        this.validateMainInput();
        this.validateBaselineInput();
        this.validateClimatologicalInput();
    }

    /**
     * Validates the main pairs and associated metadata after the constructor has copied it.
     * 
     * @throws PoolException if the input is invalid
     */

    private void validateMainInput()
    {

        if ( Objects.isNull( this.mainMeta ) )
        {
            throw new PoolException( "Specify non-null metadata for the time-series input." );
        }

        if ( Objects.isNull( this.main ) )
        {
            throw new PoolException( "Specify a non-null dataset for the time-series input." );
        }

        if ( this.main.contains( null ) )
        {
            throw new PoolException( "One or more of the time-series is null." );
        }

    }

    /**
     * Validates the baseline pairs and associated metadata after the constructor has copied it.
     * 
     * @throws PoolException if the baseline input is invalid
     */

    private void validateBaselineInput()
    {
        if ( Objects.isNull( this.baseline ) != Objects.isNull( this.baselineMeta ) )
        {
            throw new PoolException( "Specify a non-null baseline input and associated metadata or leave both "
                                           + "null. The null status of the data and metadata, respectively, is: ["
                                           + Objects.isNull( this.baseline )
                                           + ","
                                           + Objects.isNull( this.baselineMeta )
                                           + "]" );
        }

        if ( Objects.nonNull( this.baseline ) && this.baseline.contains( null ) )
        {
            throw new PoolException( "One or more of the baseline time-series is null." );
        }

        if ( Objects.nonNull( this.baseline ) && !this.baselineMeta.getPool().getIsBaselinePool() )
        {
            throw new PoolException( "The metadata associated with the baseline pool does not designate this "
                                           + "pool as a baseline. Correct the metadata." );
        }
    }

    /**
     * Validates the climatological input after the constructor has copied it.
     * 
     * @throws PoolException if the climatological input is invalid
     */

    private void validateClimatologicalInput()
    {
        // #65881: if a climatology is provided, it cannot be empty when some pairs exist
        if ( Objects.nonNull( this.getClimatology() ) && !this.getRawData().isEmpty() )
        {
            if ( this.getClimatology().size() == 0 )
            {
                throw new PoolException( "Cannot build the paired data with an empty climatology: add one or "
                                               + "more values." );
            }

            if ( !Arrays.stream( this.getClimatology().getDoubles() ).anyMatch( Double::isFinite ) )
            {
                throw new PoolException( "Must have at least one non-missing value in the climatological "
                                               + "input" );
            }
        }
    }

}