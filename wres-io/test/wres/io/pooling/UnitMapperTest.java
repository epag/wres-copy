package wres.io.pooling;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;
import java.util.function.DoubleUnaryOperator;

import com.zaxxer.hikari.HikariDataSource;
import liquibase.database.Database;
import liquibase.exception.LiquibaseException;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;

import wres.io.data.caching.MeasurementUnits;
import wres.io.data.details.MeasurementDetails;
import wres.io.database.TestDatabase;
import wres.system.DatabaseType;
import wres.system.SystemSettings;

/**
 * Tests the {@link UnitMapper}.
 */
public class UnitMapperTest
{
    private static final String CFS = "CFS";
    private static final String CMS = "CMS";
    @Mock
    private SystemSettings mockSystemSettings;
    private wres.io.database.Database wresDatabase;
    private TestDatabase testDatabase;
    private HikariDataSource dataSource;
    private Connection rawConnection;
    private MeasurementUnits measurementUnitsCache;

    @BeforeClass
    public static void oneTimeSetup()
    {
        // Set the JVM timezone for use by H2. Needs to happen before anything else
        TimeZone.setDefault( TimeZone.getTimeZone( "UTC" ) );
    }

    @Before
    public void setup() throws SQLException, LiquibaseException
    {
        MockitoAnnotations.openMocks( this );
        // Create the database and connection pool
        this.testDatabase = new TestDatabase( this.getClass().getName() );
        this.dataSource = this.testDatabase.getNewHikariDataSource();

        // Create the connection and schema
        this.rawConnection = DriverManager.getConnection( this.testDatabase.getJdbcString() );
        this.testDatabase.createWresSchema( this.rawConnection );

        // Substitute our H2 connection pool for both pools:
        Mockito.when( this.mockSystemSettings.getConnectionPool() )
               .thenReturn( this.dataSource );
        Mockito.when( this.mockSystemSettings.getHighPriorityConnectionPool() )
               .thenReturn( this.dataSource );
        Mockito.when( this.mockSystemSettings.getDatabaseType() )
               .thenReturn( DatabaseType.H2 );
        Mockito.when( this.mockSystemSettings.getDatabaseMaximumPoolSize() )
               .thenReturn( 10 );

        this.wresDatabase = new wres.io.database.Database( this.mockSystemSettings );
        this.measurementUnitsCache = new MeasurementUnits( this.wresDatabase );

        // Create the tables
        this.addTheDatabaseAndTables();
    }

    @Test
    public void testConversionOfCFSToCMS() throws SQLException
    {
        // Create the unit mapper for CMS
        UnitMapper mapper = UnitMapper.of( CMS );

        // Obtain the measurement units for CFS
        MeasurementDetails measurement = new MeasurementDetails();
        String units = CFS;
        measurement.setUnit( units );
        measurement.save( this.wresDatabase );
        Long measurementUnitId = measurement.getId();

        String unitName = this.measurementUnitsCache.getUnit( measurementUnitId );
        DoubleUnaryOperator converter = mapper.getUnitMapper( unitName );

        // 1.0 CFS = 35.3147 CMS. Check with delta 5 d.p.
        assertEquals( 1.0, converter.applyAsDouble( 35.3147 ), 0.00001 );

        // Test via unit name
        DoubleUnaryOperator namedConverter = mapper.getUnitMapper( units );
        assertEquals( 1.0, namedConverter.applyAsDouble( 35.3147 ), 0.00001 );

        // Test via unit name in different case
        DoubleUnaryOperator namedConverterLowerCase = mapper.getUnitMapper( "cfs" );
        assertEquals( 1.0, namedConverterLowerCase.applyAsDouble( 35.3147 ), 0.00001 );
    }

    @Test
    public void testIdentityConversionOfCMSToCMS() throws SQLException
    {
        // Create the unit mapper for CMS
        UnitMapper mapper = UnitMapper.of( CMS );

        // Obtain the measurement units for CMS
        MeasurementDetails measurement = new MeasurementDetails();
        String units = CMS;
        measurement.setUnit( units );
        measurement.save( this.wresDatabase );
        Long measurementUnitId = measurement.getId();

        String unitName = this.measurementUnitsCache.getUnit( measurementUnitId );
        DoubleUnaryOperator converter = mapper.getUnitMapper( unitName );
        assertEquals( 1.0, converter.applyAsDouble( 1.0 ), 0.00001 );

        // Test via unit name
        DoubleUnaryOperator namedConverter = mapper.getUnitMapper( units );
        assertEquals( 1.0, namedConverter.applyAsDouble( 1.0 ), 0.00001 );
    }

    /**
     * See Redmine issue #98413.
     * @throws SQLException if a measurement unit could not be saved
     */
    
    @Test
    public void testIdentityConversionOfNonFiniteMeasurementsWithIdentifiedUnitMapper() throws SQLException
    {
        UnitMapper mapper = UnitMapper.of( CMS );

        MeasurementDetails measurement = new MeasurementDetails();
        String units = CFS;
        measurement.setUnit( units );
        measurement.save( this.wresDatabase );
        Long measurementUnitId = measurement.getId();

        // Could break the following into one test per assertion, but using a single test for brevity and because a 
        // single atom of code triggers the non-finite value pathway
        String unitName = this.measurementUnitsCache.getUnit( measurementUnitId );
        DoubleUnaryOperator converter = mapper.getUnitMapper( unitName );
        // assertEquals handles these weird cases out of the box, nice
        assertEquals( Double.NaN, converter.applyAsDouble( Double.NaN ), 0.00001 );
        assertEquals( Double.NEGATIVE_INFINITY, converter.applyAsDouble( Double.NEGATIVE_INFINITY ), 0.00001 );
        assertEquals( Double.POSITIVE_INFINITY, converter.applyAsDouble( Double.POSITIVE_INFINITY ), 0.00001 );
    }

    /**
     * See Redmine issue #98413.
     */

    @Test
    public void testIdentityConversionOfNonFiniteMeasurementsWithNamedUnitMapper()
    {
        UnitMapper mapper = UnitMapper.of( CMS );

        // Could break the following into one test per assertion, but using a single test for brevity and because a 
        // single atom of code triggers the non-finite value pathway
        DoubleUnaryOperator namedConverterLowerCase = mapper.getUnitMapper( CFS );
        // assertEquals handles these weird cases out of the box, nice
        assertEquals( Double.NaN, namedConverterLowerCase.applyAsDouble( Double.NaN ), 0.00001 );
        assertEquals( Double.NEGATIVE_INFINITY,
                      namedConverterLowerCase.applyAsDouble( Double.NEGATIVE_INFINITY ),
                      0.00001 );
        assertEquals( Double.POSITIVE_INFINITY,
                      namedConverterLowerCase.applyAsDouble( Double.POSITIVE_INFINITY ),
                      0.00001 );
    }
    
    @Test
    public void constructWithBlankUnitThrowsExpectedException()
    {
        assertThrows( NoSuchUnitConversionException.class,
                      () -> UnitMapper.of( "" ) );

        assertThrows( NoSuchUnitConversionException.class,
                      () -> UnitMapper.of( "   " ) );
    }

    @After
    public void tearDown() throws SQLException
    {
        this.dropTheTablesAndSchema();
        this.rawConnection.close();
        this.rawConnection = null;
        this.testDatabase = null;
        this.dataSource.close();
        this.dataSource = null;
    }


    /**
     * Adds the required tables for the tests presented here, which is a subset of all tables.
     * @throws LiquibaseException if the tables could not be created
     */

    private void addTheDatabaseAndTables() throws LiquibaseException
    {
        // Create the required tables
        Database liquibaseDatabase =
                this.testDatabase.createNewLiquibaseDatabase( this.rawConnection );

        this.testDatabase.createMeasurementUnitTable( liquibaseDatabase );
    }

    /**
     * Drops the schema, cascading to all tables.
     * @throws SQLException if any tables or the schema failed to drop
     */

    private void dropTheTablesAndSchema() throws SQLException
    {
        this.testDatabase.dropWresSchema( this.rawConnection );
        this.testDatabase.dropLiquibaseChangeTables( this.rawConnection );
    }
}