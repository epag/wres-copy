package wres.io.writing.commaseparated;

import static org.junit.Assert.assertEquals;

import java.time.Duration;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.StringJoiner;

import org.junit.Before;
import org.junit.Test;

import wres.datamodel.sampledata.DatasetIdentifier;
import wres.datamodel.sampledata.Location;
import wres.datamodel.sampledata.MeasurementUnit;
import wres.datamodel.sampledata.SampleMetadata;
import wres.datamodel.sampledata.SampleMetadata.SampleMetadataBuilder;
import wres.datamodel.scale.TimeScale;
import wres.datamodel.scale.TimeScale.TimeScaleFunction;
import wres.datamodel.time.TimeWindow;

/**
 * Tests the {@link CommaSeparatedUtilities}.
 */

public class CommaSeparatedUtilitiesTest
{

    private TimeWindow timeWindow;

    @Before
    public void runBeforeEachTest()
    {
        Instant earlyRef = Instant.parse( "2017-12-31T00:00:00Z" );
        Instant lateRef = Instant.parse( "2017-12-31T12:00:00Z" );
        Instant earlyValid = Instant.parse( "2008-01-31T12:00:00Z" );
        Instant lateValid = Instant.parse( "2019-12-31T12:00:00Z" );
        Duration earlyLead = Duration.ofHours( 6 );
        Duration lateLead = Duration.ofHours( 120 );

        timeWindow = TimeWindow.of( earlyRef, lateRef, earlyValid, lateValid, earlyLead, lateLead );
    }

    @Test
    public void testGetTimeWindowHeaderFromSampleMetadataWithInstantaneousTimeScale()
    {

        SampleMetadata metadata = new SampleMetadataBuilder().setMeasurementUnit( MeasurementUnit.of() )
                                                             .setTimeWindow( this.timeWindow )
                                                             .setTimeScale( TimeScale.of() )
                                                             .build();

        String expected = "EARLIEST ISSUE TIME,"
                          + "LATEST ISSUE TIME,"
                          + "EARLIEST VALID TIME,"
                          + "LATEST VALID TIME,"
                          + "EARLIEST LEAD TIME IN HOURS [INSTANTANEOUS],"
                          + "LATEST LEAD TIME IN HOURS [INSTANTANEOUS]";

        StringJoiner actual =
                CommaSeparatedUtilities.getTimeWindowHeaderFromSampleMetadata( metadata, ChronoUnit.HOURS );

        assertEquals( expected, actual.toString() );
    }

    @Test
    public void testGetTimeWindowHeaderFromSampleMetadataWithAccumulatedTimeScale()
    {
        TimeScale timeScale = TimeScale.of( Duration.ofHours( 1 ), TimeScaleFunction.TOTAL );

        SampleMetadata metadata = new SampleMetadataBuilder().setMeasurementUnit( MeasurementUnit.of() )
                                                             .setTimeWindow( this.timeWindow )
                                                             .setTimeScale( timeScale )
                                                             .build();

        String expected = "EARLIEST ISSUE TIME,"
                          + "LATEST ISSUE TIME,"
                          + "EARLIEST VALID TIME,"
                          + "LATEST VALID TIME,"
                          + "EARLIEST LEAD TIME IN HOURS [TOTAL OVER PAST 1 HOURS],"
                          + "LATEST LEAD TIME IN HOURS [TOTAL OVER PAST 1 HOURS]";

        StringJoiner actual =
                CommaSeparatedUtilities.getTimeWindowHeaderFromSampleMetadata( metadata, ChronoUnit.HOURS );

        assertEquals( expected, actual.toString() );
    }

    @Test
    public void testGetFeatureNameFromMetadataWithNamedLocation()
    {

        DatasetIdentifier identifier = DatasetIdentifier.of( Location.of( "fooBasin" ), "barVariable" );

        SampleMetadata metadata = new SampleMetadataBuilder().setMeasurementUnit( MeasurementUnit.of() )
                                                             .setIdentifier( identifier )
                                                             .build();

        String actual =
                CommaSeparatedUtilities.getFeatureNameFromMetadata( metadata );


        assertEquals( "fooBasin", actual.toString() );

    }

    @Test
    public void testGetFeatureNameFromMetadataWithGeographicLocation()
    {

        DatasetIdentifier identifier = DatasetIdentifier.of( Location.of( 43.23F, 23.41F ), "barVariable" );

        SampleMetadata metadata = new SampleMetadataBuilder().setMeasurementUnit( MeasurementUnit.of() )
                                                             .setIdentifier( identifier )
                                                             .build();

        String actual =
                CommaSeparatedUtilities.getFeatureNameFromMetadata( metadata );

        assertEquals( "43.23 23.41", actual.toString() );

    }

    @Test
    public void testGetFeatureNameFromMetadataWithNullLocation()
    {

        DatasetIdentifier identifier = DatasetIdentifier.of( (Location) null, "barVariable" );

        SampleMetadata metadata = new SampleMetadataBuilder().setMeasurementUnit( MeasurementUnit.of() )
                                                             .setIdentifier( identifier )
                                                             .build();

        String actual =
                CommaSeparatedUtilities.getFeatureNameFromMetadata( metadata );

        assertEquals( "UNKNOWN", actual.toString() );

    }

}