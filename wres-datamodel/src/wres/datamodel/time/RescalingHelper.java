package wres.datamodel.time;

import java.text.MessageFormat;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringJoiner;
import java.util.TreeSet;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.datamodel.scale.RescalingException;
import wres.datamodel.scale.ScaleValidationEvent;
import wres.datamodel.scale.TimeScaleOuter;
import wres.datamodel.scale.ScaleValidationEvent.EventType;
import wres.datamodel.scale.TimeScaleOuter.TimeScaleFunction;
import wres.datamodel.time.TimeSeries.TimeSeriesBuilder;

/**
 * Helper class for supporting rescaling operations.
 * 
 * @author james.brown@hydrosolved.com
 */

class RescalingHelper
{

    /**
     * Logger.
     */

    private static final Logger LOGGER = LoggerFactory.getLogger( RescalingHelper.class );

    private static final ScaleValidationEvent DID_NOT_DETECT_AN_ATTEMPT_TO_ACCUMULATE =
            ScaleValidationEvent.debug( "Did not detect an attempt to accumulate "
                                        + "something that is not an accumulation." );

    private static final ScaleValidationEvent NOT_ATTEMPTING_TO_ACCUMULATE_AN_INSTANTANEOUS_VALUE =
            ScaleValidationEvent.debug( "Not attempting to accumulate an instantaneous value." );

    private static final ScaleValidationEvent NO_ATTEMPT_WAS_MADE_TO_CHANGE_THE_TIME_SCALE_FUNCTION =
            ScaleValidationEvent.debug( "No attempt was made to change the time scale function without "
                                        + "also changing the period." );

    private static final ScaleValidationEvent THE_DESIRED_PERIOD_OF_ZERO_IS_AN_INTEGER_MULTIPLE =
            ScaleValidationEvent.debug( "The desired period is an integer multiple of the existing "
                                        + "period and is, therefore, acceptable." );

    private static final ScaleValidationEvent THE_EXISTING_PERIOD_OF_ZERO_IS_NOT_LARGER_THAN_THE_DESIRED_PERIOD =
            ScaleValidationEvent.debug( "The existing period is not larger than the desired period and "
                                        + "is, therefore, acceptable." );

    private static final ScaleValidationEvent THE_DESIRED_FUNCTION_IS_NOT_UNKNOWN_AND_IS_THEREFORE_ACCEPTABLE =
            ScaleValidationEvent.debug( "The desired function is not unknown and is, therefore, acceptable." );

    private static final String THE_FUNCTION_ASSOCIATED_WITH = "The function associated with "
                                                               + "the desired time scale is a ''{0}'', "
                                                               + "but the function associated with the "
                                                               + "existing time scale is ''{1}''. "
                                                               + "Assuming that the latter is also a ''{2}''.";

    private static final String EXISTING_TIME_SCALE_IS_MISSING = "While attempting to upscale to a desired time scale "
                                                                 + "of ''{0}'', encountered a time-series whose "
                                                                 + "existing time-scale is undefined. This occurs when "
                                                                 + "the data source fails to identify the existing time "
                                                                 + "scale and the project declaration fails to clarify "
                                                                 + "this information. Please include the existing time "
                                                                 + "scale (existingTimeScale) in the project "
                                                                 + "declaration, otherwise a change of scale is "
                                                                 + "impossible.";

    private static final String EXISTING_TIME_SCALE_IS_MISSING_DESIRED_INSTANTANEOUS = "Encountered a time-series "
                                                                                       + "whose existing time "
                                                                                       + "scale is undefined, but whose "
                                                                                       + "desired time scale is "
                                                                                       + "instantaneous. This occurs "
                                                                                       + "when the data source fails to "
                                                                                       + "identify the existing time "
                                                                                       + "scale and the project "
                                                                                       + "declaration fails to clarify "
                                                                                       + "this information. Consider "
                                                                                       + "including the existing time "
                                                                                       + "scale (existingTimeScale) in "
                                                                                       + "the project declaration. "
                                                                                       + "Assuming that the existing "
                                                                                       + "time scale is instantaneous.";

    private static final String THESE_INTERVALS_BEFORE_STOPPING = "these intervals before stopping: ";

    private static final String DISCOVERED_THAT_THE_VALUES_WERE_NOT_EVENLY_SPACED_WITHIN_THE_PERIOD_IDENTIFIED =
            ", discovered that the values were not evenly spaced within the period. Identified ";

    private static final String UPSCALING = "upscaling.";

    private static final String DISCOVERED_FEWER_THAN_TWO_EVENTS_IN_THE_COLLECTION_WHICH_IS_INSUFFICIENT_FOR =
            ", discovered fewer than two events in the collection, which is insufficient for ";

    private static final String ENDING_AT = " ending at ";

    private static final String EVENTS_TO_A_PERIOD_OF = " events to a period of ";

    private static final String WHILE_ATTEMPING_TO_UPSCALE_A_COLLECTION_OF =
            "While attemping to upscale a collection of ";

    private static final String THREE_MEMBER_MESSAGE = "{}{}{}";

    private static final String FIVE_MEMBER_MESSAGE = "{}{}{}{}{}";

    private static final String SEVEN_MEMBER_MESSAGE = "{}{}{}{}{}";


    /**
     * Conducts upscaling of a time-series.
     * 
     * @param <T> the type of event value to upscale
     * @param timeSeries the time-series
     * @param upscaler the function that upscales the event values
     * @param desiredTimeScale the desired time scale
     * @param endsAt the set of times at which upscaled values should end
     * @return the upscaled time-series and associated validation events
     */

    static <T> RescaledTimeSeriesPlusValidation<T> upscale( TimeSeries<T> timeSeries,
                                                            Function<SortedSet<Event<T>>, T> upscaler,
                                                            TimeScaleOuter desiredTimeScale,
                                                            Set<Instant> endsAt )
    {
        Objects.requireNonNull( timeSeries );

        Objects.requireNonNull( desiredTimeScale );

        Objects.requireNonNull( endsAt );

        // Validate the request
        List<ScaleValidationEvent> validationEvents = RescalingHelper.validate( timeSeries, desiredTimeScale );

        // Empty time-series
        if ( timeSeries.getEvents().isEmpty() )
        {
            LOGGER.trace( THREE_MEMBER_MESSAGE,
                          "No upscaling required for time-series ",
                          timeSeries.hashCode(),
                          ": the time-series contained no events." );

            return RescaledTimeSeriesPlusValidation.of( timeSeries, validationEvents );
        }

        // Existing time scale missing and this was allowed during validation
        if ( !timeSeries.hasTimeScale() )
        {
            LOGGER.trace( FIVE_MEMBER_MESSAGE,
                          "Skipped upscaling time-series ",
                          timeSeries.hashCode(),
                          " to the desired time scale of ",
                          desiredTimeScale,
                          " because the existing time scale was missing. Assuming that the existing and desired scales "
                                            + "are the same." );


            return RescaledTimeSeriesPlusValidation.of( timeSeries, validationEvents );
        }

        // Existing and desired are both instantaneous
        if ( timeSeries.getTimeScale().isInstantaneous() && desiredTimeScale.isInstantaneous() )
        {
            LOGGER.trace( SEVEN_MEMBER_MESSAGE,
                          "Skipped upscaling time-series ",
                          timeSeries.hashCode(),
                          " to the desired time scale of ",
                          desiredTimeScale,
                          " because the existing time scale is ",
                          timeSeries.getTimeScale(),
                          " and both are recognized as instantaneous." );

            return RescaledTimeSeriesPlusValidation.of( timeSeries, validationEvents );
        }

        // If the period is the same, return the existing series with the desired scale
        // The validation of the function happens above. For example, the existing could be UNKNOWN
        if ( desiredTimeScale.getPeriod().equals( timeSeries.getTimeScale().getPeriod() ) )
        {
            LOGGER.trace( SEVEN_MEMBER_MESSAGE,
                          "No upscaling required for time-series ",
                          timeSeries.hashCode(),
                          ": the existing time scale of ",
                          timeSeries.getTimeScale(),
                          " effectively matches the desired time scale of ",
                          desiredTimeScale,
                          "." );

            TimeSeriesMetadata existingMetadata = timeSeries.getMetadata();
            // Create new series in case the function differs
            TimeSeriesMetadata metadata =
                    new TimeSeriesMetadata.Builder( existingMetadata ).setTimeScale( desiredTimeScale )
                                                                      .build();

            TimeSeries<T> returnMe = new TimeSeriesBuilder<T>().setMetadata( metadata )
                                                               .addEvents( timeSeries.getEvents() )
                                                               .build();

            return RescaledTimeSeriesPlusValidation.of( returnMe, validationEvents );
        }

        // No times at which values should end, so start at the beginning
        if ( endsAt.isEmpty() )
        {
            endsAt = RescalingHelper.getEndTimesFromSeries( timeSeries, desiredTimeScale );
        }

        // Group the events according to whether their valid times fall within the desired period that ends at a 
        // particular valid time
        Duration period = desiredTimeScale.getPeriod();

        Map<Instant, SortedSet<Event<T>>> groups =
                TimeSeriesSlicer.groupEventsByInterval( timeSeries.getEvents(), endsAt, period );

        // Process the groups whose events are evenly-spaced and have no missing values, otherwise skip and log
        TimeSeriesBuilder<T> builder = new TimeSeriesBuilder<>();

        // Create a mutable copy of the validation events to add more, as needed
        List<ScaleValidationEvent> mutableValidationEvents = new ArrayList<>( validationEvents );
        validationEvents = mutableValidationEvents;

        // Upscale each group
        for ( Map.Entry<Instant, SortedSet<Event<T>>> nextGroup : groups.entrySet() )
        {
            List<ScaleValidationEvent> validation = RescalingHelper.checkThatUpscalingIsPossible( nextGroup.getValue(),
                                                                                                  nextGroup.getKey(),
                                                                                                  period );
            validationEvents.addAll( validation );

            // No validation events, upscaling can proceed
            if ( validation.isEmpty() )
            {
                T result = upscaler.apply( nextGroup.getValue() );
                Event<T> upscaled = Event.of( nextGroup.getKey(), result );

                builder.addEvent( upscaled );
            }
        }

        // Set the upscaled scale
        TimeSeriesMetadata templateMetadata = timeSeries.getMetadata();
        TimeSeriesMetadata metadata = TimeSeriesMetadata.of( templateMetadata.getReferenceTimes(),
                                                             desiredTimeScale,
                                                             templateMetadata.getVariableName(),
                                                             templateMetadata.getFeature(),
                                                             templateMetadata.getUnit() );
        builder.setMetadata( metadata );

        return RescaledTimeSeriesPlusValidation.of( builder.build(), Collections.unmodifiableList( validationEvents ) );
    }

    /**
     * Inspects a time-series and returns the end times that increment from the first possible time. Since the upscaling
     * interval is right-closed, the inspection begins at one time-step before the first time in the series.
     * 
     * <p>TODO: abstract this validation if other, future, implementations rely on similar inspections.
     * 
     * @return the times at which upscaled intervals should end
     */

    private static <T> Set<Instant> getEndTimesFromSeries( TimeSeries<T> timeSeries, TimeScaleOuter desiredTimeScale )
    {
        Set<Instant> endsAt = new HashSet<>();

        Instant firstTime = timeSeries.getEvents().first().getTime();
        Instant lastTime = timeSeries.getEvents().last().getTime();
        Duration period = desiredTimeScale.getPeriod();

        Duration timeStep = Duration.ZERO; // The inert amount by which to back-pedal
        if ( timeSeries.getEvents().size() > 1 )
        {
            Iterator<Instant> iterator = timeSeries.getEvents().stream().map( Event::getTime ).iterator();
            timeStep = Duration.between( iterator.next(), iterator.next() );
        }

        // Loop until the next time is later than the last
        // Subtract the time-step so that the first value is always considered
        // because the interval is right-closed
        Instant check = firstTime.minus( timeStep );

        while ( check.isBefore( lastTime ) )
        {
            Instant next = check.plus( period );
            endsAt.add( next );
            check = next; // Increment
        }

        return Collections.unmodifiableSet( endsAt );
    }

    /**
     * Validates the request to upscale and throws an exception if the request is invalid. 
     * 
     * @param timeSeries the time-series to upscale
     * @param desiredTimeScale the desired scale
     * @throws RescalingException if the input cannot be rescaled to the desired scale
     * @return the validation events
     */

    private static <T> List<ScaleValidationEvent> validate( TimeSeries<T> timeSeries, TimeScaleOuter desiredTimeScale )
    {
        List<ScaleValidationEvent> events =
                RescalingHelper.validateForUpscaling( timeSeries.getTimeScale(), desiredTimeScale );

        // Errors to translate into exceptions?
        List<ScaleValidationEvent> errors = events.stream()
                                                  .filter( a -> a.getEventType() == EventType.ERROR )
                                                  .collect( Collectors.toList() );
        String spacer = "    ";

        if ( !errors.isEmpty() )
        {
            StringJoiner message = new StringJoiner( System.lineSeparator() );
            message.add( "Encountered "
                         + errors.size()
                         + " errors while attempting to upscale time-series "
                         + timeSeries
                         + ": " );

            errors.stream().forEach( e -> message.add( spacer + spacer + e.toString() ) );

            throw new RescalingException( message.toString() );
        }

        return Collections.unmodifiableList( events );
    }

    /**
     * Returns an empty list of {@link ScaleValidationEvent} if the inputs can produce an upscaled value, otherwise
     * one or more {@link ScaleValidationEvent} that explain why this is not possible.
     * 
     * @param events the events
     * @param endsAt the end of the interval to aggregate, which is used for logging
     * @param period The period over which to upscale
     * @return a list of scale validation events, empty if upscaling is possible
     * @throws NullPointerException if any input is null
     */

    private static <T> List<ScaleValidationEvent> checkThatUpscalingIsPossible( SortedSet<Event<T>> events,
                                                                                Instant endsAt,
                                                                                Duration period )
    {
        Objects.requireNonNull( events );
        Objects.requireNonNull( endsAt );
        Objects.requireNonNull( period );

        if ( events.size() < 2 )
        {
            String message = WHILE_ATTEMPING_TO_UPSCALE_A_COLLECTION_OF + events.size()
                             + EVENTS_TO_A_PERIOD_OF
                             + period
                             + ENDING_AT
                             + endsAt
                             + DISCOVERED_FEWER_THAN_TWO_EVENTS_IN_THE_COLLECTION_WHICH_IS_INSUFFICIENT_FOR
                             + UPSCALING;

            return List.of( ScaleValidationEvent.debug( message ) );
        }

        // Unpack the event times
        SortedSet<Instant> times =
                events.stream()
                      .map( Event::getTime )
                      .collect( Collectors.toCollection( TreeSet::new ) );

        // Add the lower bound, as the gap between this bound and the 
        // first time should be considered too
        times.add( endsAt.minus( period ) );

        // Check for even spacing if there are two or more gaps
        if ( times.size() > 2 )
        {

            String message = WHILE_ATTEMPING_TO_UPSCALE_A_COLLECTION_OF + events.size()
                             + EVENTS_TO_A_PERIOD_OF
                             + period
                             + ENDING_AT
                             + endsAt
                             + DISCOVERED_THAT_THE_VALUES_WERE_NOT_EVENLY_SPACED_WITHIN_THE_PERIOD_IDENTIFIED
                             + THESE_INTERVALS_BEFORE_STOPPING;

            Instant last = null;
            Duration lastPeriod = null;

            for ( Instant next : times )
            {
                if ( Objects.nonNull( lastPeriod ) )
                {
                    Duration nextPeriod = Duration.between( last, next );

                    if ( !Objects.equals( lastPeriod, nextPeriod ) )
                    {

                        return List.of( ScaleValidationEvent.debug( message + Set.of( lastPeriod, nextPeriod ) ) );
                    }
                }

                if ( Objects.nonNull( last ) )
                {
                    lastPeriod = Duration.between( last, next );
                }

                last = next;
            }
        }

        return List.of();
    }

    /**
     * <p>Validates the request to upscale and throws an exception if the request is invalid. The validation is composed
     * of many separate pieces, each of which produces a {@link ScaleValidationEvent}. These validation events are 
     * collected together and, if any show {@link EventType#ERROR}, then an exception is thrown with all such cases 
     * identified.
     * 
     * <p>TODO: abstract this validation if future implementations rely on some or all of the same constraints.
     * 
     * @param existingTimeScale the existing scale
     * @param desiredTimeScale the desired scale
     */

    private static List<ScaleValidationEvent> validateForUpscaling( TimeScaleOuter existingTimeScale,
                                                                    TimeScaleOuter desiredTimeScale )
    {
        // Existing time-scale is unknown
        if ( Objects.isNull( existingTimeScale ) )
        {
            // The desired time scale is not instantaneous, so upscaling may be required, but cannot be determined. 
            // This is an exceptional outcome
            if ( !desiredTimeScale.isInstantaneous() )
            {
                String message = MessageFormat.format( EXISTING_TIME_SCALE_IS_MISSING, desiredTimeScale );

                return List.of( ScaleValidationEvent.error( message ) );
            }

            return List.of( ScaleValidationEvent.info( EXISTING_TIME_SCALE_IS_MISSING_DESIRED_INSTANTANEOUS ) );
        }

        // The validation events encountered
        List<ScaleValidationEvent> allEvents = new ArrayList<>();

        // Change of scale required, i.e. not absolutely equal and not instantaneous
        // (which has a more lenient interpretation)
        if ( RescalingHelper.isChangeOfScaleRequired( existingTimeScale, desiredTimeScale ) )
        {

            // The desired time scale must be a sensible function in the context of rescaling
            allEvents.add( RescalingHelper.checkIfDesiredFunctionIsUnknown( desiredTimeScale ) );

            // Downscaling not currently allowed
            allEvents.add( RescalingHelper.checkIfDownscalingRequested( existingTimeScale.getPeriod(),
                                                                        desiredTimeScale.getPeriod() ) );

            // The desired time scale period must be an integer multiple of the existing time scale period
            allEvents.add( RescalingHelper.checkIfDesiredPeriodDoesNotCommute( existingTimeScale.getPeriod(),
                                                                               desiredTimeScale.getPeriod() ) );

            // If the existing and desired periods are the same, the function cannot differ
            allEvents.add( RescalingHelper.checkIfPeriodsMatchAndFunctionsDiffer( existingTimeScale,
                                                                                  desiredTimeScale ) );

            // If the existing time scale is instantaneous, do not allow accumulations (for now)
            allEvents.add( RescalingHelper.checkIfAccumulatingInstantaneous( existingTimeScale,
                                                                             desiredTimeScale.getFunction() ) );

            // If the desired function is a total, then the existing function must also be a total
            allEvents.add( RescalingHelper.checkIfAccumulatingNonAccumulation( existingTimeScale.getFunction(),
                                                                               desiredTimeScale.getFunction() ) );

        }

        return Collections.unmodifiableList( allEvents );
    }

    /**
     * Returns <code>true</code> if a change of time scale is required, otherwise false. A change of scale is required
     * if the two inputs are different, except in one of the following two cases:
     *
     * <ol>
     * <li>The two inputs are both instantaneous according to {@link TimeScaleOuter#isInstantaneous()}</li>
     * <li>The only difference is the {@link TimeScaleOuter#getFunction()} and the existingTimeScale is
     * {@link TimeScaleFunction#UNKNOWN}</li>
     * </ol>
     *
     * @param existingTimeScale the existing time scale
     * @param desiredTimeScale the desired time scale
     * @return true if a change of time scale is required, otherwise false
     * @throws NullPointerException if either input is null
     */

    private static boolean isChangeOfScaleRequired( TimeScaleOuter existingTimeScale, TimeScaleOuter desiredTimeScale )
    {
        Objects.requireNonNull( existingTimeScale );

        Objects.requireNonNull( desiredTimeScale );

        boolean different = !existingTimeScale.equals( desiredTimeScale );
        boolean exceptionOne = existingTimeScale.isInstantaneous() && desiredTimeScale.isInstantaneous();
        boolean exceptionTwo = existingTimeScale.getPeriod().equals( desiredTimeScale.getPeriod() )
                               && existingTimeScale.getFunction() == TimeScaleFunction.UNKNOWN;

        return different && !exceptionOne && !exceptionTwo;
    }

    /**
     * Checks whether the desiredFunction is {@link TimeScaleFunction#UNKNOWN}, which is not allowed. If so,
     * returns a {@link ScaleValidationEvent} that is {@link EventType#ERROR}, otherwise {@link EventType#PASS}.
     *
     * @param desiredScale the desired scale
     * @return a validation event
     */

    private static ScaleValidationEvent checkIfDesiredFunctionIsUnknown( TimeScaleOuter desiredScale )
    {
        if ( desiredScale.getFunction() == TimeScaleFunction.UNKNOWN )
        {
            String message = MessageFormat.format( "The desired time scale is ''{0}'', but the function must be known "
                                                   + "to conduct rescaling.",
                                                   desiredScale );

            return ScaleValidationEvent.error( message );
        }

        return THE_DESIRED_FUNCTION_IS_NOT_UNKNOWN_AND_IS_THEREFORE_ACCEPTABLE;
    }

    /**
     * Checks whether the existingPeriod is larger than the desiredPeriod, which is not allowed. If so, returns
     * a {@link ScaleValidationEvent} that is {@link EventType#ERROR}, otherwise {@link EventType#PASS}.
     * 
     * @param existingPeriod the existing period
     * @param desiredPeriod the desired period
     * @return a validation event
     */

    private static ScaleValidationEvent checkIfDownscalingRequested( Duration existingPeriod,
                                                                     Duration desiredPeriod )
    {
        if ( existingPeriod.compareTo( desiredPeriod ) > 0 )
        {
            String message = MessageFormat.format( "Downscaling is not supported: the desired time scale of ''{0}'' "
                                                   + "cannot be smaller than the existing time scale of ''{1}''.",
                                                   desiredPeriod,
                                                   existingPeriod );

            return ScaleValidationEvent.error( message );
        }

        return THE_EXISTING_PERIOD_OF_ZERO_IS_NOT_LARGER_THAN_THE_DESIRED_PERIOD;
    }

    /**
     * Checks whether the desiredPeriod is an integer multiple of the existingPeriod. If not an integer multiple, 
     * returns a {@link ScaleValidationEvent} that is {@link EventType#ERROR}, otherwise {@link EventType#PASS}.  
     * 
     * @param inputPeriod the existing period
     * @param desiredPeriod the desired period 
     * @return a validation event
     */

    private static ScaleValidationEvent checkIfDesiredPeriodDoesNotCommute( Duration inputPeriod,
                                                                            Duration desiredPeriod )
    {
        boolean isOneZero = Duration.ZERO.equals( inputPeriod ) || Duration.ZERO.equals( desiredPeriod );

        // Check at a resolution of seconds
        // BigDecimal could be used, but is comparatively expensive and 
        // such precision is unnecessary when the standard time resolution is PT1M      
        long inPeriod = inputPeriod.getSeconds();
        long desPeriod = desiredPeriod.getSeconds();
        long remainder = desPeriod % inPeriod;

        if ( isOneZero || remainder > 0 )
        {
            String message = MessageFormat.format( "The desired period of ''{0}''"
                                                   + " is not an integer multiple of the existing period"
                                                   + ", which is ''{1}''. If the data has multiple time-steps that "
                                                   + "vary by time or feature, it may not be possible to "
                                                   + "achieve the desired time scale for all of the data. "
                                                   + "In that case, consider removing the desired time "
                                                   + "scale and performing an evaluation at the "
                                                   + "existing time scale of the data, where possible.",
                                                   desiredPeriod,
                                                   inputPeriod );

            return ScaleValidationEvent.error( message );
        }

        return THE_DESIRED_PERIOD_OF_ZERO_IS_AN_INTEGER_MULTIPLE;
    }


    /**
     * <p>Checks whether the {@link TimeScaleOuter#getPeriod()} of the two periods match. Returns a validation event as 
     * follows:
     * 
     * <ol>
     * <li>If the {@link TimeScaleOuter#getPeriod()} match and the {@link TimeScaleOuter#getFunction()} do not match and the 
     * the existingTimeScale is {@link TimeScaleFunction#UNKNOWN}, returns a {@link ScaleValidationEvent} that is 
     * a {@link EventType#WARN}, which assumes, leniently, that the desiredTimeScale can be achieved.</li>
     * <li>If the {@link TimeScaleOuter#getPeriod()} match and the {@link TimeScaleOuter#getFunction()} do not match and the 
     * the existingTimeScale is not a {@link TimeScaleFunction#UNKNOWN}, returns a {@link ScaleValidationEvent} that is 
     * a {@link EventType#ERROR}.</li>
     * <li>Otherwise, returns a {@link ScaleValidationEvent} that is a {@link EventType#PASS}.</li>
     * </ol>
     * 
     * @param existingTimeScale the existing time scale
     * @param desiredTimeScale the desired time scale
     * @returns a validation event
     */

    private static ScaleValidationEvent checkIfPeriodsMatchAndFunctionsDiffer( TimeScaleOuter existingTimeScale,
                                                                               TimeScaleOuter desiredTimeScale )
    {
        if ( existingTimeScale.getPeriod().equals( desiredTimeScale.getPeriod() )
             && existingTimeScale.getFunction() != desiredTimeScale.getFunction() )
        {
            // If the existing time scale has an unknown function, potentially warn
            if ( existingTimeScale.getFunction() == TimeScaleFunction.UNKNOWN )
            {
                // Warn if the desired time scale has a different function
                if ( desiredTimeScale.getFunction() != TimeScaleFunction.UNKNOWN )
                {
                    String message = MessageFormat.format( THE_FUNCTION_ASSOCIATED_WITH,
                                                           desiredTimeScale.getFunction(),
                                                           TimeScaleFunction.UNKNOWN,
                                                           desiredTimeScale.getFunction() );

                    return ScaleValidationEvent.warn( message );
                }
            }
            else
            {
                String message = MessageFormat.format( "The period associated with the existing and desired "
                                                       + "time scales is ''{0}'', but the time scale function "
                                                       + "associated with the existing time scale is ''{1}'', which "
                                                       + "differs from the function associated with the desired time "
                                                       + "scale, namely ''{2}''. This is not allowed. The function "
                                                       + "cannot be changed without changing the period.",
                                                       existingTimeScale.getPeriod(),
                                                       existingTimeScale.getFunction(),
                                                       desiredTimeScale.getFunction() );

                return ScaleValidationEvent.error( message );
            }
        }

        return NO_ATTEMPT_WAS_MADE_TO_CHANGE_THE_TIME_SCALE_FUNCTION;
    }

    /**
     * <p>Checks whether attempting to accumulate a quantity that is instantaneous, which is not allowed. If so, returns
     * a {@link ScaleValidationEvent} that is {@link EventType#ERROR}, otherwise {@link EventType#PASS}. 
     * 
     * <p>TODO: in principle, this might be supported in future, but involves both an integral
     * estimate and a change in units. For example, if the input is precipitation in mm/s
     * then the total might be estimated as the average over the interval, multiplied by 
     * the number of seconds.
     * 
     * @param existingScale the existing scale and function
     * @param desiredFunction the desired function
     * @return a validation event
     */

    private static ScaleValidationEvent checkIfAccumulatingInstantaneous( TimeScaleOuter existingScale,
                                                                          TimeScaleFunction desiredFunction )
    {
        if ( existingScale.isInstantaneous() && desiredFunction == TimeScaleFunction.TOTAL )
        {
            String message = MessageFormat.format( "Cannot accumulate instantaneous values. Change the existing "
                                                   + "time scale or change the function associated with the desired "
                                                   + "time scale to something other than a ''{0}''.",
                                                   TimeScaleFunction.TOTAL );

            return ScaleValidationEvent.error( message );
        }

        return NOT_ATTEMPTING_TO_ACCUMULATE_AN_INSTANTANEOUS_VALUE;

    }

    /**
     * <p>Checks whether attempting to accumulate something that is not already an accumulation.
     * 
     * <ol>
     * <li>If the desired function is a {@link TimeScaleFunction#TOTAL} and the existing function is a
     * {@link TimeScaleFunction#UNKNOWN}, returns a {@link ScaleValidationEvent} that is
     * a {@link EventType#WARN}, which assumes, leniently, that the existing function is a 
     * {@link TimeScaleFunction#TOTAL}.</li>
     * <li>If the desired function is a {@link TimeScaleFunction#TOTAL} and the existing function is not
     * {@link TimeScaleFunction#UNKNOWN}, returns a {@link ScaleValidationEvent} that is
     * a {@link EventType#ERROR}.</li>
     * <li>Otherwise, returns a {@link ScaleValidationEvent} that is a {@link EventType#PASS}.</li>
     * </ol>
     * 
     * @param existingFunction the existing function
     * @param desiredFunction the desired function
     * @return a validation event
     */

    private static ScaleValidationEvent checkIfAccumulatingNonAccumulation( TimeScaleFunction existingFunction,
                                                                            TimeScaleFunction desiredFunction )
    {
        if ( desiredFunction == TimeScaleFunction.TOTAL && existingFunction != TimeScaleFunction.TOTAL )
        {
            if ( existingFunction == TimeScaleFunction.UNKNOWN )
            {
                String message =
                        MessageFormat.format( THE_FUNCTION_ASSOCIATED_WITH,
                                              TimeScaleFunction.TOTAL,
                                              TimeScaleFunction.UNKNOWN,
                                              TimeScaleFunction.TOTAL );

                return ScaleValidationEvent.warn( message );
            }
            else
            {
                String message =
                        MessageFormat.format( "Cannot accumulate values that are not already accumulations. The "
                                              + "function associated with the existing time scale must be a ''{0}'', "
                                              + "rather than a ''{1}'', or the function associated with the desired "
                                              + "time scale must be changed.",
                                              TimeScaleFunction.TOTAL,
                                              existingFunction );

                return ScaleValidationEvent.error( message );
            }
        }

        return DID_NOT_DETECT_AN_ATTEMPT_TO_ACCUMULATE;
    }

}