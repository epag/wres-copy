package wres.io.retrieval.datashop;

import java.time.Duration;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.UnaryOperator;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.config.ProjectConfigException;
import wres.config.generated.PairConfig;
import wres.config.generated.ProjectConfig;
import wres.config.generated.ProjectConfig.Inputs;
import wres.datamodel.sampledata.SampleMetadata;
import wres.datamodel.sampledata.pairs.PoolOfPairs;
import wres.datamodel.scale.TimeScale;
import wres.datamodel.time.TimeSeries;
import wres.datamodel.time.TimeSeriesPairer;
import wres.datamodel.time.TimeSeriesSlicer;
import wres.datamodel.time.TimeSeriesUpscaler;
import wres.datamodel.time.TimeWindow;
import wres.datamodel.time.TimeSeries.TimeSeriesBuilder;
import wres.datamodel.time.generators.TimeWindowGenerator;
import wres.io.config.ConfigHelper;
import wres.io.project.Project;
import wres.io.retrieval.datashop.PoolSupplier.PoolOfPairsSupplierBuilder;

/**
 * Generates a collection of {@link PoolSupplier} that contain the pools for a particular evaluation.
 * 
 * @author james.brown@hydrosolved.com
 */

class PoolsGenerator<L, R> implements Supplier<List<Supplier<PoolOfPairs<L, R>>>>
{

    /**
     * Logger.
     */

    private static final Logger LOGGER = LoggerFactory.getLogger( PoolsGenerator.class );

    /**
     * The project for which pools are required.
     */

    private final Project project;

    /**
     * The basic metadata for the sequence of pools.
     */

    private final SampleMetadata basicMetadata;

    /**
     * The basic metadata for the sequence of pools with respect to the baseline.
     */

    private final SampleMetadata basicMetadataForBaseline;

    /**
     * A factory to create project-relevant retrievers.
     */

    private final RetrieverFactory<L, R> retrieverFactory;

    /**
     * The upscaler for left-ish values.
     */

    private final TimeSeriesUpscaler<L> leftUpscaler;

    /**
     * The upscaler for right-ish values.
     */

    private final TimeSeriesUpscaler<R> rightUpscaler;

    /**
     * The pairer, which admits finite value pairs.
     */

    private final TimeSeriesPairer<L, R> pairer;

    /**
     * A transformer that applies value constraints to left-ish values.
     */

    private final UnaryOperator<L> leftTransformer;

    /**
     * A transformer that applies value constraints to right-ish values.
     */

    private final UnaryOperator<R> rightTransformer;

    /**
     * A mapper to map between left-ish climate values and double values. TODO: propagate left-ish data for 
     * climatology, rather than transforming it upfront. 
     */

    private final ToDoubleFunction<L> climateMapper;

    /**
     * The admissible values for the left-ish data associated with climatology.
     */

    private final Predicate<L> climateAdmissibleValue;

    /**
     * An optional generator for baseline data (e.g., persistence or climatology)
     */

    private final UnaryOperator<TimeSeries<R>> baselineGenerator;

    /**
     * The pool suppliers.
     */

    private final List<Supplier<PoolOfPairs<L, R>>> pools;

    @Override
    public List<Supplier<PoolOfPairs<L, R>>> get()
    {
        return this.pools;
    }

    /**
     * A builder for the {@link PoolGenerator}.
     */

    static class Builder<L, R>
    {

        /**
         * The project for which pools are required.
         */

        private Project project;

        /**
         * The basic metadata for the sequence of pools.
         */

        private SampleMetadata basicMetadata;

        /**
         * The basic metadata for the sequence of pools with respect to the baseline.
         */

        private SampleMetadata basicMetadataForBaseline;

        /**
         * A factory to create project-relevant retrievers.
         */

        private RetrieverFactory<L, R> retrieverFactory;

        /**
         * A function to support pairing of left and right data.
         */

        private TimeSeriesPairer<L, R> pairer;

        /**
         * A function to upscale left data.
         */

        private TimeSeriesUpscaler<L> leftUpscaler;

        /**
         * A function to upscale right data.
         */

        private TimeSeriesUpscaler<R> rightUpscaler;

        /**
         * A transformer that applies value constraints to left-ish values.
         */

        private UnaryOperator<L> leftTransformer;

        /**
         * A transformer that applies value constraints to right-ish values.
         */

        private UnaryOperator<R> rightTransformer;

        /**
         * A mapper to map between left-ish climate values and double values. TODO: make the climatology generic, 
         * specifically left-ish, throughout the software, rather than double-ish, although this carries some boxing
         * overhead for double types. See JEP 218 for a possibly better future: https://openjdk.java.net/jeps/218
         */

        private ToDoubleFunction<L> climateMapper;

        /**
         * The admissible values for the left-ish data associated with climatology.
         */

        private Predicate<L> climateAdmissibleValue;

        /**
         * An optional generator for baseline data (e.g., persistence or climatology)
         */

        private UnaryOperator<TimeSeries<R>> baselineGenerator;

        /**
         * @param project the project
         * @return the builder
         */
        Builder<L, R> setProject( Project project )
        {
            this.project = project;

            return this;
        }

        /**
         * @param basicMetadata the basic metadata for the primary pairs
         * @return the builder
         */
        Builder<L, R> setBasicMetadata( SampleMetadata basicMetadata )
        {
            this.basicMetadata = basicMetadata;

            return this;
        }

        /**
         * @param basicMetadataForBaseline the basic metadata for the baseline pairs
         * @return the builder
         */
        Builder<L, R> setBasicMetadataForBaseline( SampleMetadata basicMetadataForBaseline )
        {
            this.basicMetadataForBaseline = basicMetadataForBaseline;

            return this;
        }

        /**
         * @param retrieverFactory the retriever factory
         * @return the builder
         */
        Builder<L, R> setRetrieverFactory( RetrieverFactory<L, R> retrieverFactory )
        {
            this.retrieverFactory = retrieverFactory;

            return this;
        }

        /**
         * @param pairer the pairer
         * @return the builder
         */
        Builder<L, R> setPairer( TimeSeriesPairer<L, R> pairer )
        {
            this.pairer = pairer;

            return this;
        }

        /**
         * @param leftUpscaler the upscaler for left values
         * @return the builder
         */
        Builder<L, R> setLeftUpscaler( TimeSeriesUpscaler<L> leftUpscaler )
        {
            this.leftUpscaler = leftUpscaler;

            return this;
        }

        /**
         * @param rightUpscaler the upscaler for right values
         * @return the builder
         */
        Builder<L, R> setRightUpscaler( TimeSeriesUpscaler<R> rightUpscaler )
        {
            this.rightUpscaler = rightUpscaler;

            return this;
        }

        /**
         * @param climatologyAdmissibleValue the admissible value constraint on climatology
         * @return the builder
         */
        Builder<L, R> setClimateAdmissibleValue( Predicate<L> climatologyAdmissibleValue )
        {
            this.climateAdmissibleValue = climatologyAdmissibleValue;

            return this;
        }

        /**
         * @param leftTransformer the left transformer
         * @return the builder
         */
        Builder<L, R> setLeftTransformer( UnaryOperator<L> leftTransformer )
        {
            this.leftTransformer = leftTransformer;

            return this;
        }

        /**
         * @param rightTransformer the right transformer
         * @return the builder
         */
        Builder<L, R> setRightTransformer( UnaryOperator<R> rightTransformer )
        {
            this.rightTransformer = rightTransformer;

            return this;
        }

        /**
         * @param climateMapper the climateMapper to set
         * @return the builder
         */
        Builder<L, R> setClimateMapper( ToDoubleFunction<L> climateMapper )
        {
            this.climateMapper = climateMapper;

            return this;
        }

        /**
         * @param baselineGenerator the baselineGenerator to set
         * @return the builder
         */
        Builder<L, R> setBaselineGenerator( UnaryOperator<TimeSeries<R>> baselineGenerator )
        {
            this.baselineGenerator = baselineGenerator;

            return this;
        }

        /**
         * Builds an instance.
         * 
         * @return an instance
         */

        PoolsGenerator<L, R> build()
        {
            return new PoolsGenerator<>( this );
        }
    }

    /**
     * Hidden constructor.
     * 
     * @param projectthe project
     * @param feature the feature
     * @param unitMapper the unit mapper
     * @throws NullPointerException if any input is null
     * @throws IllegalArgumentException if the declaration is inconsistent with the type of pool expected
     */

    private PoolsGenerator( Builder<L, R> builder )
    {
        // Set then validate
        this.project = builder.project;
        this.retrieverFactory = builder.retrieverFactory;
        this.basicMetadata = builder.basicMetadata;
        this.basicMetadataForBaseline = builder.basicMetadataForBaseline;
        this.baselineGenerator = builder.baselineGenerator;
        this.pairer = builder.pairer;
        this.leftUpscaler = builder.leftUpscaler;
        this.rightUpscaler = builder.rightUpscaler;
        this.climateAdmissibleValue = builder.climateAdmissibleValue;
        this.leftTransformer = builder.leftTransformer;
        this.rightTransformer = builder.rightTransformer;
        this.climateMapper = builder.climateMapper;

        String messageStart = "Cannot build the pool generator: ";

        Objects.requireNonNull( this.project, messageStart + "the project is missing." );
        Objects.requireNonNull( this.retrieverFactory, messageStart + "the retriever factory is missing." );
        Objects.requireNonNull( this.basicMetadata, messageStart + "the basic metadata is missing." );

        Objects.requireNonNull( this.pairer, messageStart + "the pairer is missing." );
        Objects.requireNonNull( this.leftUpscaler, messageStart + "the upscaler for left values is missing" );
        Objects.requireNonNull( this.rightUpscaler, messageStart + "the upscaler for right values is missing." );

        // If adding a baseline, baseline metadata is needed. If not, it should not be supplied
        if ( this.project.hasBaseline() != Objects.nonNull( this.basicMetadataForBaseline ) )
        {
            throw new IllegalArgumentException( messageStart + "baseline metadata should be supplied when required, "
                                                + "otherwise it should not be supplied." );
        }

        // A baseline generator should be supplied if there is a baseline to generate, otherwise not
        if ( Objects.nonNull( this.baselineGenerator ) != ConfigHelper.hasGeneratedBaseline( this.project.getBaseline() ) )
        {
            throw new IllegalArgumentException( messageStart
                                                + " a baseline generator should be supplied when required, "
                                                + "otherwise it should not be supplied." );
        }

        // Create the pools
        this.pools = this.createPools();
    }

    /**
     * Produces a collection of pools.
     * 
     * @return a collection of pools
     * @throws NullPointerExecption if any input is null
     * @throws PoolCreationException if the pools cannot be created for any other reason
     */

    private List<Supplier<PoolOfPairs<L, R>>> createPools()
    {
        ProjectConfig projectConfig = this.getProject().getProjectConfig();
        PairConfig pairConfig = projectConfig.getPair();
        Inputs inputsConfig = projectConfig.getInputs();

        // Create the common builder
        PoolOfPairsSupplierBuilder<L, R> builder = new PoolOfPairsSupplierBuilder<>();
        builder.setLeftUpscaler( this.getLeftUpscaler() )
               .setRightUpscaler( this.getRightUpscaler() )
               .setPairer( this.getPairer() )
               .setInputsDeclaration( inputsConfig )
               .setLeftTransformer( this.getLeftTransformer() )
               .setRightTransformer( this.getRightTransformer() );

        // Obtain and set the desired time scale. 
        TimeScale desiredTimeScale = this.setAndGetDesiredTimeScale( pairConfig, builder );

        // Create the time windows, iterate over them and create the retrievers 
        try
        {
            // Time windows
            Set<TimeWindow> timeWindows = TimeWindowGenerator.getTimeWindowsFromPairConfig( pairConfig );

            // Climatological data required?
            Supplier<Stream<TimeSeries<L>>> climatologySupplier = null;
            if ( this.getProject().usesProbabilityThresholds()
                 || ConfigHelper.hasGeneratedBaseline( inputsConfig.getBaseline() ) )
            {
                // Re-use the climatology across pools with a caching retriever
                Supplier<Stream<TimeSeries<L>>> leftSupplier = this.getRetrieverFactory().getLeftRetriever();

                climatologySupplier = CachingRetriever.of( leftSupplier );

                // Get the climatology at an appropriate scale and with any transformations required and add to the 
                // builder, but retain the existing scale for the main supplier, as that may be re-used for left data, 
                // and left data is rescaled with respect to right data
                Supplier<Stream<TimeSeries<L>>> climatologyAtScale =
                        this.getClimatologyAtDesiredTimeScale( climatologySupplier,
                                                               this.getLeftUpscaler(),
                                                               desiredTimeScale,
                                                               this.getLeftTransformer(),
                                                               this.getClimateAdmissibleValue() );

                builder.setClimatology( climatologyAtScale, this.getClimateMapper() );
            }

            List<PoolSupplier<L, R>> returnMe = new ArrayList<>();

            // Create the retrievers for each time window
            for ( TimeWindow nextWindow : timeWindows )
            {
                Supplier<Stream<TimeSeries<R>>> rightSupplier =
                        this.getRetrieverFactory().getRightRetriever( nextWindow );

                builder.setRight( rightSupplier );

                // Set the metadata
                SampleMetadata poolMeta = SampleMetadata.of( this.getBasicMetadata(), nextWindow );
                builder.setMetadata( poolMeta );

                // Add left data
                // TODO: consider acquiring all the left data upfront with a caching retriever,
                // even when climatology is not required. In that case, prepare something similar to
                // climatology above, but bounded by any overall time bounds/window in the declaration
                Supplier<Stream<TimeSeries<L>>> leftSupplier = climatologySupplier;

                if ( Objects.isNull( leftSupplier ) )
                {
                    leftSupplier = this.getRetrieverFactory().getLeftRetriever( nextWindow );
                }

                builder.setLeft( leftSupplier );

                // Set baseline if needed
                if ( this.getProject().hasBaseline() )
                {

                    // Set the metadata
                    SampleMetadata poolBaseMeta = SampleMetadata.of( this.getBasicMetadataForBaseline(), nextWindow );
                    builder.setBaselineMetadata( poolBaseMeta );

                    // Generated baseline?
                    if ( ConfigHelper.hasGeneratedBaseline( projectConfig.getInputs().getBaseline() ) )
                    {
                        builder.setBaselineGenerator( this.getBaselineGenerator() );
                    }
                    // Data-source baseline
                    else
                    {
                        Supplier<Stream<TimeSeries<R>>> baselineSupplier =
                                this.getRetrieverFactory().getBaselineRetriever( nextWindow );

                        builder.setBaseline( baselineSupplier );
                    }
                }

                returnMe.add( builder.build() );

            }

            LOGGER.debug( "Created {} pool suppliers for '{}'.",
                          returnMe.size(),
                          this.getBasicMetadata() );

            return Collections.unmodifiableList( returnMe );
        }
        catch ( DataAccessException | ProjectConfigException e )
        {
            throw new PoolCreationException( "While attempting to create pools for '" + basicMetadata
                                             + "':",
                                             e );
        }
    }

    /**
     * Returns the upscaler.
     * 
     * @return the upscaler
     */

    private TimeSeriesUpscaler<L> getLeftUpscaler()
    {
        return this.leftUpscaler;
    }

    /**
     * Returns the upscaler.
     * 
     * @return the upscaler
     */

    private TimeSeriesUpscaler<R> getRightUpscaler()
    {
        return this.rightUpscaler;
    }

    /**
     * Returns the pairer.
     * 
     * @return the pairer
     */

    private TimeSeriesPairer<L, R> getPairer()
    {
        return this.pairer;
    }

    /**
     * Returns the project.
     * 
     * @return the project
     */

    private Project getProject()
    {
        return this.project;
    }

    /**
     * Returns the transformer for left values, if any.
     * 
     * @return the transformer for left values
     */

    private UnaryOperator<L> getLeftTransformer()
    {
        return this.leftTransformer;
    }

    /**
     * Returns the transformer for right values, if any.
     * 
     * @return the transformer for right values
     */

    private UnaryOperator<R> getRightTransformer()
    {
        return this.rightTransformer;
    }

    /**
     * Returns the retriever factory.
     * 
     * @return the retriever factory
     */

    private RetrieverFactory<L, R> getRetrieverFactory()
    {
        return this.retrieverFactory;
    }

    /**
     * Returns the basic metadata.
     * 
     * @return the basic metadata
     */

    private SampleMetadata getBasicMetadata()
    {
        return this.basicMetadata;
    }

    /**
     * Returns the basic metadata for a baseline, if any.
     * 
     * @return the basic metadata for a baseline
     */

    private SampleMetadata getBasicMetadataForBaseline()
    {
        return this.basicMetadataForBaseline;
    }

    /**
     * Returns the baseline generator, if any.
     * 
     * @return the baseline generator
     */

    private UnaryOperator<TimeSeries<R>> getBaselineGenerator()
    {
        return this.baselineGenerator;
    }

    /**
     * Returns the admissible value guard for climatology.
     * 
     * @return the admissible value guard for climatology
     */

    private Predicate<L> getClimateAdmissibleValue()
    {
        return this.climateAdmissibleValue;
    }

    /**
     * Returns the mapper from left-ish climate values to double values.
     * 
     * @return the climate mapper
     */

    private ToDoubleFunction<L> getClimateMapper()
    {
        return this.climateMapper;
    }

    /**
     * Sets and gets the desired time scale associated with the pair declaration.
     * 
     * @param pairConfig the pair declaration
     * @param builder the builder
     */

    private TimeScale setAndGetDesiredTimeScale( PairConfig pairConfig,
                                                 PoolOfPairsSupplierBuilder<L, R> builder )
    {

        TimeScale desiredTimeScale = null;
        // Obtain from the declaration if available
        if ( Objects.nonNull( pairConfig )
             && Objects.nonNull( pairConfig.getDesiredTimeScale() ) )
        {
            desiredTimeScale = TimeScale.of( pairConfig.getDesiredTimeScale() );
            builder.setDesiredTimeScale( desiredTimeScale );

            if ( Objects.nonNull( pairConfig.getDesiredTimeScale().getFrequency() ) )
            {
                ChronoUnit unit = ChronoUnit.valueOf( pairConfig.getDesiredTimeScale()
                                                                .getUnit()
                                                                .value()
                                                                .toUpperCase() );

                Duration frequency = Duration.of( pairConfig.getDesiredTimeScale().getFrequency(), unit );

                builder.setFrequencyOfPairs( frequency );
            }
        }

        return desiredTimeScale;
    }

    /**
     * Returns a climatological data supply at the desired time scale.
     * 
     * @param climatologySupplier the raw data supplier
     * @param upscaler the upscaler
     * @param desiredTimeScale the desired time scale
     * @param transformer an optional transformer
     * @param admissibleValue an admissible value constraint
     * @return a climatological supply at the desired time scale
     */

    private Supplier<Stream<TimeSeries<L>>>
            getClimatologyAtDesiredTimeScale( Supplier<Stream<TimeSeries<L>>> climatologySupplier,
                                              TimeSeriesUpscaler<L> upscaler,
                                              TimeScale desiredTimeScale,
                                              UnaryOperator<L> transformer,
                                              Predicate<L> admissibleValue )
    {
        List<TimeSeries<L>> climData = climatologySupplier.get()
                                                          .collect( Collectors.toList() );

        TimeSeriesBuilder<L> builder = new TimeSeriesBuilder<>();
        builder.setTimeScale( desiredTimeScale );

        for ( TimeSeries<L> next : climData )
        {
            TimeSeries<L> nextSeries = next;

            TimeScale nextScale = nextSeries.getTimeScale();

            // Upscale? A difference in period is the minimum needed
            if ( Objects.nonNull( desiredTimeScale )
                 && Objects.nonNull( nextScale )
                 && !desiredTimeScale.getPeriod().equals( nextScale.getPeriod() ) )
            {
                if ( Objects.isNull( upscaler ) )
                {
                    throw new IllegalArgumentException( "The climatological time-series "
                                                        + nextSeries.hashCode()
                                                        + " needed upscaling from "
                                                        + nextScale
                                                        + " to "
                                                        + desiredTimeScale
                                                        + " but no upscaler was provided." );
                }

                nextSeries = upscaler.upscale( nextSeries, desiredTimeScale )
                                     .getTimeSeries();

                LOGGER.debug( "Upscaled the climatological time-series {} from {} to {}.",
                              nextSeries.hashCode(),
                              nextScale,
                              desiredTimeScale );

            }
            
            // Transform?
            if( Objects.nonNull( transformer ) )
            {
                nextSeries = TimeSeriesSlicer.transform( nextSeries, transformer );
            }

            // Filter inadmissible values. Do this LAST because a transformer may produce 
            // non-finite values
            nextSeries = TimeSeriesSlicer.filter( nextSeries, admissibleValue );

            builder.addEvents( nextSeries.getEvents() );
        }

        TimeSeries<L> climatologyAtScale = builder.build();

        LOGGER.debug( "Created a new climatological time-series {} with {} climatological values.",
                      climatologyAtScale.hashCode(),
                      climatologyAtScale.getEvents().size() );

        return () -> Stream.of( climatologyAtScale );
    }

}