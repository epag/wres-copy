package wres.datamodel.statistics;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import static org.hamcrest.CoreMatchers.*;
import static org.hamcrest.MatcherAssert.assertThat;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import wres.datamodel.DatasetIdentifier;
import wres.datamodel.MetricConstants;
import wres.datamodel.sampledata.Location;
import wres.datamodel.sampledata.MeasurementUnit;
import wres.datamodel.sampledata.SampleMetadata;
import wres.statistics.generated.BoxplotMetric;
import wres.statistics.generated.BoxplotStatistic;
import wres.statistics.generated.BoxplotMetric.LinkedValueType;
import wres.statistics.generated.BoxplotMetric.QuantileValueType;
import wres.statistics.generated.BoxplotStatistic.Box;

/**
 * Tests the {@link BoxplotStatisticOuter}.
 * 
 * @author james.brown@hydrosolveDataFactory.com
 */
public final class BoxPlotStatisticOuterTest
{

    /**
     * Basic statistic.
     */

    private BoxplotStatistic basic = null;

    /**
     * Basic metadata.
     */

    private StatisticMetadata metadata = null;

    @Before
    public void runBeforeEachClass()
    {
        BoxplotMetric metric = BoxplotMetric.newBuilder()
                                            .addAllQuantiles( List.of( 0.0,
                                                                       0.5,
                                                                       1.0 ) )
                                            .setLinkedValueType( LinkedValueType.OBSERVED_VALUE )
                                            .build();

        BoxplotStatistic.Builder boxplotOne = BoxplotStatistic.newBuilder()
                                                              .setMetric( metric );

        for ( int i = 0; i < 10; i++ )
        {

            boxplotOne.addStatistics( Box.newBuilder()
                                         .addAllQuantiles( List.of( 1.0,
                                                                    2.0,
                                                                    3.0 ) )
                                         .setLinkedValue( 1.0 ) );
        }

        this.basic = boxplotOne.build();
        Location l2 = Location.of( "A" );
        this.metadata = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                 DatasetIdentifier.of( l2,
                                                                                       "B",
                                                                                       "C" ) ),
                                              10,
                                              MeasurementUnit.of(),
                                              MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                              MetricConstants.MAIN );
    }

    /**
     * Constructs a {@link BoxplotStatisticOuter} and tests for equality with another {@link BoxplotStatisticOuter}.
     */

    @Test
    public void testEquals()
    {

        //Build datasets
        final Location l1 = Location.of( "A" );
        final StatisticMetadata m1 = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                              DatasetIdentifier.of( l1,
                                                                                                    "B",
                                                                                                    "C" ) ),
                                                           10,
                                                           MeasurementUnit.of(),
                                                           MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                                           MetricConstants.MAIN );
        final Location l2 = Location.of( "A" );
        final StatisticMetadata m2 = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                              DatasetIdentifier.of( l2,
                                                                                                    "B",
                                                                                                    "C" ) ),
                                                           12,
                                                           MeasurementUnit.of(),
                                                           MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                                           MetricConstants.MAIN );
        final Location l3 = Location.of( "B" );
        final StatisticMetadata m3 = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                              DatasetIdentifier.of( l3,
                                                                                                    "B",
                                                                                                    "C" ) ),
                                                           10,
                                                           MeasurementUnit.of(),
                                                           MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                                           MetricConstants.MAIN );


        BoxplotMetric metric = BoxplotMetric.newBuilder()
                                            .addAllQuantiles( List.of( 0.0,
                                                                       0.25,
                                                                       0.5,
                                                                       1.0 ) )
                                            .setQuantileValueType( QuantileValueType.FORECAST_ERROR )
                                            .setLinkedValueType( LinkedValueType.OBSERVED_VALUE )
                                            .build();

        BoxplotStatistic.Builder mvc = BoxplotStatistic.newBuilder()
                                                       .setMetric( metric );

        for ( int i = 0; i < 10; i++ )
        {

            mvc.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 1.0,
                                                             2.0,
                                                             3.0,
                                                             4.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }

        BoxplotStatistic.Builder mvd = BoxplotStatistic.newBuilder()
                                                       .setMetric( metric );

        for ( int i = 0; i < 5; i++ )
        {
            mvd.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 1.0,
                                                             2.0,
                                                             3.0,
                                                             4.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }

        BoxplotStatistic.Builder mve = BoxplotStatistic.newBuilder()
                                                       .setMetric( metric );

        for ( int i = 0; i < 5; i++ )
        {
            mve.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 2.0,
                                                             3.0,
                                                             4.0,
                                                             5.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }

        BoxplotMetric metricTwo = BoxplotMetric.newBuilder()
                                               .addAllQuantiles( List.of( 0.0,
                                                                          0.25,
                                                                          0.5,
                                                                          1.0 ) )
                                               .setQuantileValueType( QuantileValueType.FORECAST_ERROR )
                                               .setLinkedValueType( LinkedValueType.ENSEMBLE_MEAN )
                                               .build();

        BoxplotStatistic.Builder mvf = BoxplotStatistic.newBuilder()
                                                       .setMetric( metricTwo );

        for ( int i = 0; i < 10; i++ )
        {

            mvf.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 1.0,
                                                             2.0,
                                                             3.0,
                                                             4.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }

        BoxplotMetric metricThree = BoxplotMetric.newBuilder()
                                                 .addAllQuantiles( List.of( 0.0,
                                                                            0.25,
                                                                            0.5,
                                                                            1.0 ) )
                                                 .setQuantileValueType( QuantileValueType.FORECAST )
                                                 .setLinkedValueType( LinkedValueType.ENSEMBLE_MEAN )
                                                 .build();

        BoxplotStatistic.Builder mvg = BoxplotStatistic.newBuilder()
                                                       .setMetric( metricThree );

        for ( int i = 0; i < 10; i++ )
        {

            mvf.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 1.0,
                                                             2.0,
                                                             3.0,
                                                             4.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }

        BoxplotStatisticOuter q =
                BoxplotStatisticOuter.of( this.basic, m2 );
        BoxplotStatisticOuter r =
                BoxplotStatisticOuter.of( this.basic, m3 );
        BoxplotStatisticOuter s =
                BoxplotStatisticOuter.of( this.basic, m1 );
        BoxplotStatisticOuter t =
                BoxplotStatisticOuter.of( this.basic, m1 );
        BoxplotStatisticOuter u =
                BoxplotStatisticOuter.of( mvc.build(), m1 );
        BoxplotStatisticOuter v =
                BoxplotStatisticOuter.of( mvc.build(), m2 );
        BoxplotStatisticOuter w =
                BoxplotStatisticOuter.of( mvd.build(), m2 );
        BoxplotStatisticOuter x =
                BoxplotStatisticOuter.of( mvf.build(), m2 );
        BoxplotStatisticOuter y =
                BoxplotStatisticOuter.of( mvg.build(), m2 );
        BoxplotStatisticOuter z =
                BoxplotStatisticOuter.of( mve.build(), m2 );

        // Compare
        assertThat( s, is( t ) );
        assertThat( null, not( s ) );
        assertThat( s, not( Double.valueOf( 1.0 ) ) );
        assertThat( s, not( u ) );
        assertThat( s, not( v ) );
        assertThat( v, not( w ) );
        assertThat( w, not( x ) );
        assertThat( w, not( y ) );
        assertThat( w, not( z ) );
        assertThat( q, is( q ) );
        assertThat( s, not( q ) );
        assertThat( q, not( s ) );
        assertThat( q, not( r ) );
    }

    /**
     * Constructs a {@link BoxplotStatisticOuter} and tests for equal hashcodes with another {@link BoxplotStatisticOuter}.
     */

    @Test
    public void testHashcode()
    {
        // Equal objects have equal hashcodes
        assertThat( basic.hashCode(), is( basic.hashCode() ) );

        // Consistent with equals
        Location l2 = Location.of( "A" );
        StatisticMetadata m1 = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                        DatasetIdentifier.of( l2,
                                                                                              "B",
                                                                                              "C" ) ),
                                                     10,
                                                     MeasurementUnit.of(),
                                                     MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                                     MetricConstants.MAIN );

        BoxplotMetric metric = BoxplotMetric.newBuilder()
                                            .addAllQuantiles( List.of( 0.0,
                                                                       0.5,
                                                                       1.0 ) )
                                            .setLinkedValueType( LinkedValueType.OBSERVED_VALUE )
                                            .build();

        BoxplotStatistic.Builder two = BoxplotStatistic.newBuilder()
                                                       .setMetric( metric );

        for ( int i = 0; i < 10; i++ )
        {

            two.addStatistics( Box.newBuilder()
                                  .addAllQuantiles( List.of( 1.0,
                                                             2.0,
                                                             3.0 ) )
                                  .setLinkedValue( 1.0 ) );
        }


        BoxplotStatisticOuter basicOne = BoxplotStatisticOuter.of( this.basic, this.metadata );
        BoxplotStatisticOuter basicTwo = BoxplotStatisticOuter.of( two.build(), m1 );

        assertTrue( basicOne.equals( basicTwo ) && basicOne.hashCode() == basicTwo.hashCode() );

        // Consistency
        for ( int i = 0; i < 100; i++ )
        {
            assertTrue( basicOne.hashCode() == basicTwo.hashCode() );
        }

    }

    /**
     * Constructs a {@link BoxplotStatisticOuter} and checks the {@link BoxplotStatisticOuter#getMetadata()}.
     */

    @Test
    public void testGetMetadata()
    {
        BoxplotStatisticOuter outer = BoxplotStatisticOuter.of( this.basic, this.metadata );
        Location l1 = Location.of( "A" );
        StatisticMetadata expected = StatisticMetadata.of( SampleMetadata.of( MeasurementUnit.of( "CMS" ),
                                                                              DatasetIdentifier.of( l1,
                                                                                                    "B",
                                                                                                    "C" ) ),
                                                           10,
                                                           MeasurementUnit.of(),
                                                           MetricConstants.BOX_PLOT_OF_ERRORS_BY_OBSERVED_VALUE,
                                                           MetricConstants.MAIN );

        assertEquals( expected, outer.getMetadata() );
    }

    /**
     * Constructs a {@link BoxplotStatisticOuter} and checks the accessor methods for correct operation.
     */

    @Test
    public void testAccessors()
    {
        BoxplotStatisticOuter outer = BoxplotStatisticOuter.of( this.basic, this.metadata );

        assertEquals( 10, outer.getData().getStatisticsCount() );
    }


}