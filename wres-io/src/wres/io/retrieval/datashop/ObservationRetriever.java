package wres.io.retrieval.datashop;

import java.time.Instant;
import java.util.Optional;

import java.util.function.DoubleUnaryOperator;
import java.util.function.Function;
import java.util.stream.LongStream;
import java.util.stream.Stream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.datamodel.time.TimeSeries;
import wres.datamodel.time.TimeWindow;
import wres.io.config.LeftOrRightOrBaseline;
import wres.io.utilities.DataProvider;
import wres.io.utilities.ScriptBuilder;

/**
 * Retrieves a {@link TimeSeries} from the @wres.Observation@ table in the WRES database.
 * 
 * @author james.brown@hydrosolved.com
 */

class ObservationRetriever extends TimeSeriesRetriever<Double>
{
    
    /**
     * Error message when attempting to retrieve by identifier. See #68334 and #56214-56.
     */

    private static final String NO_IDENTIFIER_ERROR = "Retrieval of observed time-series by identifier is not "
                                                      + "currently possible because there is no identifier for "
                                                      + "observed time-series in the WRES database.";    

    /**
     * Log message.
     */

    private static final String LOG_SCRIPT = "Built the following script with hash {} for time-series retrieval:{}{}";

    /**
     * Template script for the {@link #getAll()}.
     */

    private static final String GET_ALL_TIME_SERIES_SCRIPT =
            ObservationRetriever.getScriptForGetAllTimeSeries();

    /**
     * Logger.
     */

    private static final Logger LOGGER = LoggerFactory.getLogger( ObservationRetriever.class );

    /**
     * Builder.
     */

    public static class Builder extends TimeSeriesDataShopBuilder<Double>
    {

        @Override
        ObservationRetriever build()
        {
            return new ObservationRetriever( this );
        }

    }

    /**
     * Reads a time-series by <code>wres.TimeSeries.timeseries_id</code>.
     * 
     * TODO: implement this method when there is an identifier for an observed time-series. See #68334 and #56214-56.
     * 
     * @param identifier the <code>wres.TimeSeries.timeseries_id</code>
     * @return a possible time-series for the given identifier
     */

    @Override
    public Optional<TimeSeries<Double>> get( long identifier )
    {
        throw new UnsupportedOperationException( NO_IDENTIFIER_ERROR );
    }

    /**
     * Returns all of the <code>wres.TimeSeries.timeseries_id</code> associated with this instance.
     * 
     * TODO: implement this method when there is an identifier for an observed time-series. See #68334 and #56214-56.
     * 
     * @return a stream of<code>wres.TimeSeries.timeseries_id</code>
     */

    @Override
    public LongStream getAllIdentifiers()
    {
        throw new UnsupportedOperationException( NO_IDENTIFIER_ERROR );
    }

    /**
     * Overrides the default implementation to get all specified time-series in one pull, rather than one pull for 
     * each series.
     * 
     * TODO: implement this method when there is an identifier for an observed time-series. See #68334 and #56214-56.
     * 
     * @param identifiers the stream of identifiers
     * @return a stream over the identified objects
     * @throws NullPointerException if the input is null
     */
    @Override
    public Stream<TimeSeries<Double>> get( LongStream identifiers )
    {
        throw new UnsupportedOperationException( NO_IDENTIFIER_ERROR );
    }
    
    public static void main (String[] args)
    {
        TimeWindow filter =
                TimeWindow.of( Instant.parse( "1985-01-01T00:00:00Z" ), Instant.parse( "1990-01-01T00:00:00Z" ) );

        TimeSeriesRetriever<Double> timeSeriesData =
                new ObservationRetriever.Builder().setProjectId( 7 )
                                                          .setVariableFeatureId( 1 )
                                                          .setTimeWindow( filter )
                                                          .setLeftOrRightOrBaseline( LeftOrRightOrBaseline.LEFT )
                                                          .build();

        timeSeriesData.getAll();
        
    }   
    
    /**
     * Overrides the default implementation to get all time-series in one pull, rather than one pull for each series.
     * 
     * @return the possible object
     * @throws DataAccessException if the data could not be accessed for whatever reason
     */

    @Override
    public Stream<TimeSeries<Double>> getAll()
    {
        this.validateForMultiSeriesRetrieval();

        ScriptBuilder scripter = new ScriptBuilder( GET_ALL_TIME_SERIES_SCRIPT );

        // Add basic constraints
        this.addProjectVariableAndMemberConstraints( scripter );

        // Add time window constraint
        this.addTimeWindowClause( scripter );

        // Add ORDER BY clause
        scripter.addLine( "ORDER BY O.observation_time;" );

        String script = scripter.toString();

        if ( LOGGER.isDebugEnabled() )
        {
            LOGGER.debug( LOG_SCRIPT,
                          script.hashCode(),
                          System.lineSeparator(),
                          script );
        }
        
        return this.getTimeSeriesFromScript( script, this.getDataSupplier() ).stream();
    }

    @Override
    boolean isForecastRetriever()
    {
        return false;
    }
    
    /**
     * Returns a function that obtains the measured value in the desired units.
     * 
     * @return a function to obtain the measured value in the correct units
     */

    private Function<DataProvider, Double> getDataSupplier()
    {
        return provider -> {           
            // Raw value
            double unmapped = provider.getDouble( "observation" );
            
            // Existing units
            int measurementUnitId = provider.getInt( "measurementunit_id" );
            
            // Units mapper
            DoubleUnaryOperator mapper = this.getMeasurementUnitMapper().getUnitMapper( measurementUnitId );
            
            // Convert
            return mapper.applyAsDouble( unmapped );
        };
    }

    /**
     * Returns the start of a script to acquire a time-series from the WRES database for all time-series.
     * 
     * @return the start of a script for the time-series
     */

    private static String getScriptForGetAllTimeSeries()
    {
        ScriptBuilder scripter = new ScriptBuilder();

        scripter.addLine( "SELECT " );
        scripter.addTab().addLine( "1 AS series_id," );  // Facilitates a unary mapping across series types: #56214-56
        scripter.addTab().addLine( "O.observation_time AS valid_time," );
        scripter.addTab().addLine( "O.observed_value AS observation," );
        scripter.addTab().addLine( "O.measurementunit_id" );       
        scripter.addLine( "FROM wres.Observation O" );
        scripter.addLine( "INNER JOIN wres.ProjectSource PS" );
        scripter.addTab().addLine( "ON PS.source_id = O.source_id" );
        scripter.addLine( "INNER JOIN wres.Project P" );
        scripter.addTab().addLine( "ON P.project_id = PS.project_id" );

        return scripter.toString();
    }

    /**
     * Construct.
     * 
     * @param timeWindow the time window
     * @throws NullPointerException if the filter is null
     */

    private ObservationRetriever( Builder builder )
    {
        super( builder );
    }


}