package wres.datamodel.time;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;
import static org.junit.Assert.assertTrue;

import java.time.Duration;
import java.time.Instant;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.stream.Collectors;

import org.apache.commons.lang3.tuple.Pair;
import org.junit.Before;
import org.junit.Test;

import wres.datamodel.MissingValues;
import wres.datamodel.scale.RescalingException;
import wres.datamodel.scale.TimeScale;
import wres.datamodel.scale.TimeScale.TimeScaleFunction;
import wres.datamodel.time.TimeSeries.TimeSeriesBuilder;

/**
 * Tests the {@link TimeSeriesOfDoubleBasicUpscaler}
 * 
 * @author james.brown@hydrosolved.com
 */

public class TimeSeriesOfDoubleBasicUpscalerTest
{

    /**
     * Upscaler instance to test.
     */
    private TimeSeriesUpscaler<Double> upscaler;

    @Before
    public void runBeforeEachTest()
    {
        upscaler = TimeSeriesOfDoubleBasicUpscaler.of();
    }

    @Test
    public void testUpscaleObservationsCreatesThreeUpscaledObservations()
    {
        // Six event times, PT1H apart
        Instant first = Instant.parse( "2079-12-03T00:00:00Z" );
        Instant second = Instant.parse( "2079-12-03T01:00:00Z" );
        Instant third = Instant.parse( "2079-12-03T02:00:00Z" );
        Instant fourth = Instant.parse( "2079-12-03T03:00:00Z" );
        Instant fifth = Instant.parse( "2079-12-03T04:00:00Z" );
        Instant sixth = Instant.parse( "2079-12-03T05:00:00Z" );

        // Six events
        Event<Double> one = Event.of( first, 1.0 );
        Event<Double> two = Event.of( second, 2.0 );
        Event<Double> three = Event.of( third, 3.0 );
        Event<Double> four = Event.of( fourth, 4.0 );
        Event<Double> five = Event.of( fifth, 5.0 );
        Event<Double> six = Event.of( sixth, 6.0 );

        // Time scale of the event values: TOTAL over PT1H
        TimeScale existingScale = TimeScale.of( Duration.ofHours( 1 ), TimeScaleFunction.TOTAL );

        // Time-series to upscale
        TimeSeries<Double> timeSeries = new TimeSeriesBuilder<Double>().addEvent( one )
                                                                       .addEvent( two )
                                                                       .addEvent( three )
                                                                       .addEvent( four )
                                                                       .addEvent( five )
                                                                       .addEvent( six )
                                                                       .setTimeScale( existingScale )
                                                                       .build();

        // Where the upscaled values should end (e.g., forecast valid times)
        Set<Instant> endsAt = new HashSet<>();
        endsAt.add( second );
        endsAt.add( fourth );
        endsAt.add( sixth );

        // The desired scale: total amounts over PT2H
        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 2 ), TimeScaleFunction.TOTAL );

        TimeSeries<Double> actual = this.upscaler.upscale( timeSeries, desiredTimeScale, endsAt )
                                                 .getTimeSeries();

        // Create the expected series with the desired time scale
        TimeSeries<Double> expected = new TimeSeriesBuilder<Double>().addEvent( Event.of( second, 3.0 ) )
                                                                     .addEvent( Event.of( fourth, 7.0 ) )
                                                                     .addEvent( Event.of( sixth, 11.0 ) )
                                                                     .setTimeScale( desiredTimeScale )
                                                                     .build();

        assertEquals( expected, actual );

        // Upscale without end times (i.e., start at the beginning)
        TimeSeries<Double> actualUnconditional = this.upscaler.upscale( timeSeries, desiredTimeScale )
                                                              .getTimeSeries();

        assertEquals( expected, actualUnconditional );
    }

    @Test
    public void testUpscaleObservationsCreatesOneUpscaledObservation()
    {
        // Six event times, PT1H apart
        Instant first = Instant.parse( "2079-12-03T00:00:00Z" );
        Instant second = Instant.parse( "2079-12-03T01:00:00Z" );
        Instant third = Instant.parse( "2079-12-03T02:00:00Z" );
        Instant fourth = Instant.parse( "2079-12-03T04:00:00Z" );
        Instant fifth = Instant.parse( "2079-12-03T05:00:00Z" );
        Instant sixth = Instant.parse( "2079-12-03T06:00:00Z" );

        // Six events
        Event<Double> one = Event.of( first, 12.0 );
        Event<Double> two = Event.of( second, 15.0 );
        Event<Double> three = Event.of( third, 3.0 );
        Event<Double> four = Event.of( fourth, 22.0 );
        Event<Double> five = Event.of( fifth, MissingValues.DOUBLE );
        Event<Double> six = Event.of( sixth, 25.0 );

        // Time scale of the event values: instantaneous
        TimeScale existingScale = TimeScale.of( Duration.ofMinutes( 1 ), TimeScaleFunction.MEAN );

        // Time-series to upscale
        TimeSeries<Double> timeSeries = new TimeSeriesBuilder<Double>().addEvent( one )
                                                                       .addEvent( two )
                                                                       .addEvent( three )
                                                                       .addEvent( four )
                                                                       .addEvent( five )
                                                                       .addEvent( six )
                                                                       .setTimeScale( existingScale )
                                                                       .build();

        // Where the upscaled values should end (e.g., forecast valid times)
        Set<Instant> endsAt = new HashSet<>();
        endsAt.add( third );
        endsAt.add( fourth );
        endsAt.add( sixth );

        // The desired scale: mean over PT2H
        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 2 ), TimeScaleFunction.MEAN );

        TimeSeries<Double> actual = this.upscaler.upscale( timeSeries, desiredTimeScale, endsAt )
                                                 .getTimeSeries();

        // Create the expected series with the desired time scale
        TimeSeries<Double> expected = new TimeSeriesBuilder<Double>().addEvent( Event.of( third, 9.0 ) )
                                                                     .addEvent( Event.of( sixth,
                                                                                          MissingValues.DOUBLE ) )
                                                                     .setTimeScale( desiredTimeScale )
                                                                     .build();

        assertEquals( expected, actual );
    }

    /**
     * Tests the {@link TimeSeriesOfDoubleBasicUpscaler#upscale(TimeSeries, TimeScale, Set)} to upscale eleven forecast
     * values and then pairs them with observations. This integration test is similar to system test scenario103 as of
     * commit 1a93f88202ae98cee85528a51893dd1521db2a29, but uses fake data.
     */

    @Test
    public void testUpscaleElevenForecastsAndThenPairCreatesTwoPairs()
    {
        // Eleven event times, PT6H apart
        Instant first = Instant.parse( "1985-01-01T18:00:00Z" );
        Instant second = Instant.parse( "1985-01-02T00:00:00Z" );
        Instant third = Instant.parse( "1985-01-02T06:00:00Z" );
        Instant fourth = Instant.parse( "1985-01-02T12:00:00Z" );
        Instant fifth = Instant.parse( "1985-01-02T18:00:00Z" );
        Instant sixth = Instant.parse( "1985-01-03T00:00:00Z" );
        Instant seventh = Instant.parse( "1985-01-03T06:00:00Z" );
        Instant eighth = Instant.parse( "1985-01-03T12:00:00Z" );
        Instant ninth = Instant.parse( "1985-01-03T18:00:00Z" );
        Instant tenth = Instant.parse( "1985-01-04T00:00:00Z" );
        Instant eleventh = Instant.parse( "1985-01-04T06:00:00Z" );

        // Eleven events
        Event<Double> one = Event.of( first, 5.0 );
        Event<Double> two = Event.of( second, 7.0 );
        Event<Double> three = Event.of( third, 11.0 );
        Event<Double> four = Event.of( fourth, 6.0 );
        Event<Double> five = Event.of( fifth, 23.0 );
        Event<Double> six = Event.of( sixth, 9.0 );
        Event<Double> seven = Event.of( seventh, 14.0 );
        Event<Double> eight = Event.of( eighth, 4.0 );
        Event<Double> nine = Event.of( ninth, 8.0 );
        Event<Double> ten = Event.of( tenth, 12.0 );
        Event<Double> eleven = Event.of( eleventh, 13.0 );

        // Time scale of the event values: instantaneous
        TimeScale existingScale = TimeScale.of();

        // Forecast reference time
        Instant referenceTime = Instant.parse( "1985-01-01T12:00:00Z" );

        // Time-series to upscale
        TimeSeries<Double> forecast = new TimeSeriesBuilder<Double>().addEvent( one )
                                                                     .addEvent( two )
                                                                     .addEvent( three )
                                                                     .addEvent( four )
                                                                     .addEvent( five )
                                                                     .addEvent( six )
                                                                     .addEvent( seven )
                                                                     .addEvent( eight )
                                                                     .addEvent( nine )
                                                                     .addEvent( ten )
                                                                     .addEvent( eleven )
                                                                     .addReferenceTime( referenceTime,
                                                                                        ReferenceTimeType.UNKNOWN )
                                                                     .setTimeScale( existingScale )
                                                                     .build();

        // Create an observed time-series for pairing
        // There are three observations, each ending at 6Z
        // Only two of these observations produce pairs

        // Time scale of the event values: daily average
        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 24 ), TimeScaleFunction.MEAN );

        TimeSeries<Double> observed = new TimeSeriesBuilder<Double>().addEvent( one )
                                                                     .addEvent( Event.of( third, 27.0 ) )
                                                                     .addEvent( Event.of( seventh, 2.0 ) )
                                                                     .addEvent( Event.of( eleventh, 111.0 ) )
                                                                     .setTimeScale( desiredTimeScale )
                                                                     .build();

        // Upscaled forecasts must end at observed times, in order to allow pairing
        Set<Instant> endsAt = observed.getEvents()
                                      .stream()
                                      .map( Event::getTime )
                                      .collect( Collectors.toSet() );

        TimeSeries<Double> actualForecast = this.upscaler.upscale( forecast, desiredTimeScale, endsAt )
                                                         .getTimeSeries();

        // Create the expected series with the desired time scale
        TimeSeries<Double> expectedForecast = new TimeSeriesBuilder<Double>().addEvent( Event.of( seventh, 13.0 ) )
                                                                             .addEvent( Event.of( eleventh, 9.25 ) )
                                                                             .setTimeScale( desiredTimeScale )
                                                                             .addReferenceTime( referenceTime,
                                                                                                ReferenceTimeType.UNKNOWN )
                                                                             .build();

        assertEquals( expectedForecast, actualForecast );

        // Create the pairs
        TimeSeriesPairer<Double, Double> pairer = TimeSeriesPairerByExactTime.of();

        TimeSeries<Pair<Double, Double>> actualPairs = pairer.pair( observed, actualForecast );

        // Create the expected pairs
        Pair<Double, Double> pairOne = Pair.of( 2.0, 13.0 );
        Pair<Double, Double> pairTwo = Pair.of( 111.0, 9.25 );

        TimeSeries<Pair<Double, Double>> expectedPairs =
                new TimeSeriesBuilder<Pair<Double, Double>>().addEvent( Event.of( seventh, pairOne ) )
                                                             .addEvent( Event.of( eleventh, pairTwo ) )
                                                             .setTimeScale( desiredTimeScale )
                                                             .addReferenceTime( referenceTime,
                                                                                ReferenceTimeType.UNKNOWN )
                                                             .build();

        assertEquals( expectedPairs, actualPairs );
    }

    /**
     * Tests the {@link TimeSeriesOfDoubleBasicUpscaler#upscale(TimeSeries, TimeScale, Set)} to upscale eighteen 
     * values into a maximum value that spans PT96H and ends at 2017-01-08T18:00:00Z.
     */

    @Test
    public void testUpscaleEighteenValuesToFormMaximumOverPT96H()
    {
        // Eighteen event times, PT6H apart
        Instant first = Instant.parse( "2017-01-04T12:00:00Z" );
        Instant second = Instant.parse( "2017-01-04T18:00:00Z" );
        Instant third = Instant.parse( "2017-01-05T00:00:00Z" );
        Instant fourth = Instant.parse( "2017-01-05T06:00:00Z" );
        Instant fifth = Instant.parse( "2017-01-05T12:00:00Z" );
        Instant sixth = Instant.parse( "2017-01-05T18:00:00Z" );
        Instant seventh = Instant.parse( "2017-01-06T00:00:00Z" );
        Instant eighth = Instant.parse( "2017-01-06T06:00:00Z" );
        Instant ninth = Instant.parse( "2017-01-06T12:00:00Z" );
        Instant tenth = Instant.parse( "2017-01-06T18:00:00Z" );
        Instant eleventh = Instant.parse( "2017-01-07T00:00:00Z" );
        Instant twelfth = Instant.parse( "2017-01-07T06:00:00Z" );
        Instant thirteenth = Instant.parse( "2017-01-07T12:00:00Z" );
        Instant fourteenth = Instant.parse( "2017-01-07T18:00:00Z" );
        Instant fifteenth = Instant.parse( "2017-01-08T00:00:00Z" );
        Instant sixteenth = Instant.parse( "2017-01-08T06:00:00Z" );
        Instant seventeenth = Instant.parse( "2017-01-08T12:00:00Z" );
        Instant eighteenth = Instant.parse( "2017-01-08T18:00:00Z" );

        // Eleven events
        Event<Double> one = Event.of( first, 6.575788 );
        Event<Double> two = Event.of( second, 6.999999 );
        Event<Double> three = Event.of( third, 6.969816 );
        Event<Double> four = Event.of( fourth, 6.983924 );
        Event<Double> five = Event.of( fifth, 6.9274936 );
        Event<Double> six = Event.of( sixth, 6.8008533 );
        Event<Double> seven = Event.of( seventh, 6.6371393 );
        Event<Double> eight = Event.of( eighth, 6.475394 );
        Event<Double> nine = Event.of( ninth, 6.331365 );
        Event<Double> ten = Event.of( tenth, 6.1879926 );
        Event<Double> eleven = Event.of( eleventh, 6.031824 );
        Event<Double> twelve = Event.of( twelfth, 5.874672 );
        Event<Double> thirteen = Event.of( thirteenth, 5.725722 );
        Event<Double> fourteen = Event.of( fourteenth, 5.57874 );
        Event<Double> fifteen = Event.of( fifteenth, 5.424213 );
        Event<Double> sixteen = Event.of( sixteenth, 5.284777 );
        Event<Double> seventeen = Event.of( seventeenth, 5.174213 );
        Event<Double> eighteen = Event.of( eighteenth, 5.0879264 );

        // Time scale of the event values: instantaneous
        TimeScale existingScale = TimeScale.of();

        // Forecast reference time
        Instant referenceTime = Instant.parse( "2017-01-02T12:00:00Z" );

        // Time-series to upscale
        TimeSeries<Double> forecast = new TimeSeriesBuilder<Double>().addEvent( one )
                                                                     .addEvent( two )
                                                                     .addEvent( three )
                                                                     .addEvent( four )
                                                                     .addEvent( five )
                                                                     .addEvent( six )
                                                                     .addEvent( seven )
                                                                     .addEvent( eight )
                                                                     .addEvent( nine )
                                                                     .addEvent( ten )
                                                                     .addEvent( eleven )
                                                                     .addEvent( twelve )
                                                                     .addEvent( thirteen )
                                                                     .addEvent( fourteen )
                                                                     .addEvent( fifteen )
                                                                     .addEvent( sixteen )
                                                                     .addEvent( seventeen )
                                                                     .addEvent( eighteen )
                                                                     .addReferenceTime( referenceTime,
                                                                                        ReferenceTimeType.UNKNOWN )
                                                                     .setTimeScale( existingScale )
                                                                     .build();

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 96 ), TimeScaleFunction.MAXIMUM );

        SortedSet<Instant> endsAt = new TreeSet<>( Set.of( eighteenth ) );
        TimeSeries<Double> actual = this.upscaler.upscale( forecast, desiredTimeScale, endsAt )
                                                 .getTimeSeries();

        TimeSeries<Double> expected = new TimeSeriesBuilder<Double>()
                                                                     .addEvent( Event.of( eighteen.getTime(),
                                                                                          four.getValue() ) )
                                                                     .addReferenceTime( referenceTime,
                                                                                        ReferenceTimeType.UNKNOWN )
                                                                     .setTimeScale( desiredTimeScale )
                                                                     .build();

        assertEquals( expected, actual );
    }

    @Test
    public void testValidationFailsIfDownscalingRequested()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                    TimeScaleFunction.MEAN );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofMinutes( 1 ),
                                                   TimeScaleFunction.MEAN );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: Downscaling is not supported: the desired "
                         + "time scale of 'PT1M' cannot be smaller than "
                         + "the existing time scale of 'PT1H'.";

        assertTrue( exception.getMessage().contains( message ) );
    }

    @Test
    public void testValidationFailsIfDesiredFunctionIsUnknown()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                    TimeScaleFunction.MEAN );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofMinutes( 1 ),
                                                   TimeScaleFunction.UNKNOWN );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: The desired time scale function is 'UNKNOWN': the function must be "
                         + "known to conduct rescaling.";

        assertTrue( exception.getMessage().contains( message ) );
    }

    @Test
    public void testValidationFailsIfDesiredPeriodDoesNotCommute()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                    TimeScaleFunction.MEAN );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofMinutes( 75 ),
                                                   TimeScaleFunction.MEAN );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: The desired period of 'PT1H15M' is not an integer multiple of the existing "
                         + "period, which is 'PT1H'. If the data has multiple time-steps that vary by time or "
                         + "feature, it may not be possible to achieve the desired time scale for all of the data. In "
                         + "that case, consider removing the desired time scale and performing an evaluation at the "
                         + "existing time scale of the data, where possible.";

        assertTrue( exception.getMessage().contains( message ) );
    }

    @Test
    public void testValidationFailsIfPeriodsMatchAndFunctionsDiffer()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                    TimeScaleFunction.MEAN );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                   TimeScaleFunction.TOTAL );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: The period associated with the existing and desired time scales is "
                         + "'PT1H', but the time scale function associated with the existing time scale is 'MEAN', "
                         + "which differs from the function associated with the desired time scale, namely 'TOTAL'. "
                         + "This is not allowed. The function cannot be changed without changing the period.";

        assertTrue( exception.getMessage().contains( message ) );
    }

    @Test
    public void testValidationFailsIfAccumulatingInstantaneous()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofSeconds( 1 ),
                                                    TimeScaleFunction.TOTAL );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                   TimeScaleFunction.TOTAL );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: Cannot accumulate instantaneous values. Change the existing time scale or "
                         + "change the function associated with the desired time scale to something other than a "
                         + "'TOTAL'.";

        assertTrue( exception.getMessage().contains( message ) );
    }

    @Test
    public void testValidationFailsIfAccumulatingNonAccumulation()
    {
        TimeScale existingTimeScale = TimeScale.of( Duration.ofHours( 1 ),
                                                    TimeScaleFunction.MEAN );

        TimeScale desiredTimeScale = TimeScale.of( Duration.ofHours( 2 ),
                                                   TimeScaleFunction.TOTAL );

        TimeSeries<Double> fake = new TimeSeriesBuilder<Double>().setTimeScale( existingTimeScale ).build();

        RescalingException exception =
                assertThrows( RescalingException.class, () -> this.upscaler.upscale( fake, desiredTimeScale ) );

        String message = "ERROR: Cannot accumulate values that are not already accumulations. The "
                         + "function associated with the existing time scale must be a 'TOTAL', "
                         + "rather than a 'MEAN', or the function associated with the desired time "
                         + "scale must be changed.";

        assertTrue( exception.getMessage().contains( message ) );
    }

}