package wres.reading.csv;

import java.io.IOException;
import java.io.InputStream;
import java.time.Duration;
import java.time.Instant;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.StringJoiner;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Supplier;
import java.util.stream.Stream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.config.yaml.components.DatasetOrientation;
import wres.datamodel.types.Ensemble;
import wres.datamodel.scale.TimeScaleOuter;
import wres.datamodel.space.Feature;
import wres.datamodel.time.TimeSeries;
import wres.datamodel.time.TimeSeriesMetadata;
import wres.reading.DataSource;
import wres.reading.ReadException;
import wres.reading.ReaderUtilities;
import wres.reading.TimeSeriesReader;
import wres.reading.TimeSeriesTuple;
import wres.reading.DataSource.DataDisposition;
import wres.statistics.MessageFactory;
import wres.statistics.generated.Geometry;
import wres.statistics.generated.TimeScale.TimeScaleFunction;
import wres.statistics.generated.ReferenceTime.ReferenceTimeType;

/**
 * <p>A reader of time-series from a source of comma separated values (CSV). Comment lines are allowed and begin with
 * a # character.
 *
 * <p>TODO: consider using OpenCSV or similar for the parsing, rather than the {@link CsvDataProvider}.
 *
 * @author James Brown
 */

public class CsvReader implements TimeSeriesReader
{
    private static final Logger LOGGER = LoggerFactory.getLogger( CsvReader.class );
    private static final char DELIMITER = ',';
    private static final String VALUE = "value";
    private static final String VALUE_DATE = "value_date";
    private static final String MEASUREMENT_UNIT = "measurement_unit";
    private static final String VARIABLE_NAME = "variable_name";
    private static final String LOCATION = "location";
    private static final String REFERENCE_DATETIME_COLUMN = "start_date";
    private static final String FEATURE_DESCRIPTION_COLUMN = "location_description";
    private static final String FEATURE_SRID_COLUMN = "location_srid";
    private static final String FEATURE_WKT_COLUMN = "location_wkt";
    private static final String TIMESCALE_IN_MINUTES_COLUMN = "timescale_in_minutes";
    private static final String TIMESCALE_FUNCTION_COLUMN = "timescale_function";
    private static final String DEFAULT_ENSEMBLE_NAME = "default";

    /**
     * @return an instance
     */

    public static CsvReader of()
    {
        return new CsvReader();
    }

    @Override
    public Stream<TimeSeriesTuple> read( DataSource dataSource )
    {
        Objects.requireNonNull( dataSource );

        // Validate the disposition of the data source
        ReaderUtilities.validateDataDisposition( dataSource, DataDisposition.CSV_WRES );

        try
        {
            CsvDataProvider provider = CsvDataProvider.from( dataSource.getUri(), DELIMITER );

            return this.read( dataSource, provider );
        }
        catch ( IOException e )
        {
            throw new ReadException( "Failed to read a CSV source.", e );
        }
    }

    @Override
    public Stream<TimeSeriesTuple> read( DataSource dataSource, InputStream inputStream )
    {
        Objects.requireNonNull( dataSource );
        Objects.requireNonNull( inputStream );

        // Validate the disposition of the data source
        ReaderUtilities.validateDataDisposition( dataSource, DataDisposition.CSV_WRES );

        try
        {
            CsvDataProvider provider = CsvDataProvider.from( inputStream, DELIMITER );

            return this.read( dataSource, provider );
        }
        catch ( IOException e )
        {
            throw new ReadException( "Failed to read a CSV source.", e );
        }
    }

    /**
     * @param dataSource the data source
     * @param provider the data provider
     * @return the time-series streams
     */

    private Stream<TimeSeriesTuple> read( DataSource dataSource, CsvDataProvider provider )
    {
        Objects.requireNonNull( dataSource );

        // Get the lazy supplier of time-series data
        Supplier<TimeSeriesTuple> supplier = this.getTimeSeriesSupplier( dataSource, provider );

        // Generate a stream of time-series. Nothing is read here. Rather, as part of a terminal operation on this
        // stream, each pull will read through to the supplier, then in turn to the data provider, and finally to
        // the data source.
        return Stream.generate( supplier )
                     // Finite stream, proceeds while a time-series is returned
                     .takeWhile( Objects::nonNull )
                     // Close the data provider when the stream is closed
                     .onClose( () -> {
                         LOGGER.debug( "Detected a stream close event, closing an underlying data provider." );
                         provider.close();
                     } );
    }

    /**
     * Returns a time-series supplier from the inputs.
     *
     * @param dataSource the data source
     * @param provider the data provider
     * @return a time-series supplier
     */

    private Supplier<TimeSeriesTuple> getTimeSeriesSupplier( DataSource dataSource,
                                                             CsvDataProvider provider )
    {

        SortedMap<String, SortedMap<Instant, Double>> traceValues = new TreeMap<>();
        AtomicReference<TimeSeriesMetadata> lastTraceMetadata = new AtomicReference<>();
        AtomicReference<String> lastTraceName = new AtomicReference<>();

        // Was the final time-series returned already?
        AtomicBoolean returnedFinal = new AtomicBoolean();

        Set<String> unconfiguredVariableNames = new HashSet<>( 1 );

        // Create a supplier that returns a time-series once complete
        return () -> {

            // Clean up before sending the null sentinel, which terminates the stream
            // New rows to increment
            while ( provider.next() )
            {
                // Increment the current series or return a completed one
                // The series may contain up to N replicates
                TimeSeriesTuple tuple = this.incrementOrCompleteSeries( provider,
                                                                        dataSource,
                                                                        traceValues,
                                                                        lastTraceMetadata,
                                                                        lastTraceName,
                                                                        unconfiguredVariableNames );

                // Complete? If so, return it
                if ( Objects.nonNull( tuple ) )
                {
                    return tuple;
                }
            }

            // Create the final series, if it hasn't been created already
            if ( !returnedFinal.getAndSet( true ) )
            {
                // Print information about any undeclared variables discovered in the source
                if ( !unconfiguredVariableNames.isEmpty() && LOGGER.isWarnEnabled() )
                {
                    DatasetOrientation lrb = dataSource.getDatasetOrientation();

                    LOGGER.warn( "The following variable names were encountered in a {} forecast csv data source with "
                                 + "URI {} that were not declared in the project: {}",
                                 lrb,
                                 dataSource.getUri(),
                                 unconfiguredVariableNames );
                }

                return this.createTimeSeries( dataSource,
                                              lastTraceMetadata.get(),
                                              traceValues,
                                              lastTraceName.get(),
                                              provider.getRowIndex() + 1 );
            }

            // Null sentinel to close stream
            return null;
        };
    }

    /**
     * Increments an existing series by reading the current row or completes a series and returns it, cleaning the
     * temporary map of values for the next series.
     *
     * @param provider the data provider
     * @param dataSource the data source
     * @param traceValues the values to increment
     * @param lastTraceMetadata the last time-series trace metadata, if any
     * @param lastTraceName the last trace name, if any
     * @return a completed series or null when incrementing a series
     */

    private TimeSeriesTuple incrementOrCompleteSeries( CsvDataProvider provider,
                                                       DataSource dataSource,
                                                       SortedMap<String, SortedMap<Instant, Double>> traceValues,
                                                       AtomicReference<TimeSeriesMetadata> lastTraceMetadata,
                                                       AtomicReference<String> lastTraceName,
                                                       Set<String> unconfiguredVariableNames )
    {
        // Validate the row
        this.validateNextRow( dataSource, provider, unconfiguredVariableNames );

        // Read the time-series metadata
        TimeSeriesMetadata currentTimeSeriesMetadata = this.readMetadata( dataSource,
                                                                          provider,
                                                                          unconfiguredVariableNames );

        String traceName = this.getEnsembleName( provider );

        try
        {
            Instant valueDate = provider.getInstant( VALUE_DATE );
            Double value = provider.getDouble( VALUE );
            TimeSeriesTuple tuple = null;

            if ( !currentTimeSeriesMetadata.equals( lastTraceMetadata.get() )
                 && Objects.nonNull( lastTraceMetadata.get() ) )
            {
                tuple = this.createTimeSeries( dataSource,
                                               lastTraceMetadata.get(),
                                               traceValues,
                                               lastTraceName.get(),
                                               provider.getRowIndex() + 1 );

                // New timeseries
                traceValues.clear();
            }
            else
            {
                LOGGER.debug( "Current time-series metadata equals metadata from the previous row. The metadata: {}.",
                              currentTimeSeriesMetadata );
            }

            // Get the currently-building trace
            SortedMap<Instant, Double> trace = traceValues.get( traceName );

            // If the trace holder doesn't exist, create it
            if ( Objects.isNull( trace ) )
            {
                trace = new TreeMap<>();
                traceValues.put( traceName, trace );
            }

            // Save the data into a temporary structure
            trace.put( valueDate, value );

            lastTraceMetadata.set( currentTimeSeriesMetadata );
            lastTraceName.set( traceName );

            return tuple;
        }
        catch ( IllegalStateException | ClassCastException e )
        {
            throw new ReadException( "Encountered an error while reading the CSV data source at "
                                     + dataSource.getUri(),
                                     e );
        }
    }

    /**
     * <p>Build a timeseries out of temporary data structures.
     *
     * <p>When there is a placeholder reference datetime, replace it with the
     * latest valid datetime found as "latest observation." This means there was
     * no reference datetime found in the CSV, but until the WRES db schema is
     * ready to store any kind of timeseries with 0, 1, or N reference datetimes
     * we are required to specify something here.
     *
     * @param dataSource the data source
     * @param timeSeriesMetadata the metadata for most-recently-parsed data
     * @param traceValues the most-recently-parsed data in sorted map form
     * @param lastEnsembleName the most-recently-parsed ensemble name
     * @param lineNumber the most-recently-parsed line number in the csv source
     * @return the time-series tuple
     * @throws ReadException When something goes wrong.
     */

    private TimeSeriesTuple createTimeSeries( DataSource dataSource,
                                              TimeSeriesMetadata timeSeriesMetadata,
                                              SortedMap<String, SortedMap<Instant, Double>> traceValues,
                                              String lastEnsembleName,
                                              int lineNumber )
    {
        LOGGER.debug( "Creating a time-series with {}, {}, {}, {}",
                      timeSeriesMetadata,
                      traceValues,
                      lastEnsembleName,
                      lineNumber );

        // Check if this is actually an ensemble or single trace
        if ( traceValues.size() == 1
             && traceValues.firstKey()
                           .equals( DEFAULT_ENSEMBLE_NAME ) )
        {
            TimeSeries<Double> timeSeries = ReaderUtilities.transform( timeSeriesMetadata,
                                                                       traceValues.get( DEFAULT_ENSEMBLE_NAME ),
                                                                       lineNumber,
                                                                       dataSource.getUri() );

            // Validate
            ReaderUtilities.validateAgainstEmptyTimeSeries( timeSeries, dataSource.getUri() );

            return TimeSeriesTuple.ofSingleValued( timeSeries, dataSource );
        }
        else
        {
            TimeSeries<Ensemble> timeSeries = ReaderUtilities.transformEnsemble( timeSeriesMetadata,
                                                                                 traceValues,
                                                                                 lineNumber,
                                                                                 dataSource.getUri() );

            // Validate
            ReaderUtilities.validateAgainstEmptyTimeSeries( timeSeries, dataSource.getUri() );

            return TimeSeriesTuple.ofEnsemble( timeSeries, dataSource );
        }
    }

    /**
     * Reads the time-series metadata.
     * @param dataSource the data source
     * @param unconfiguredVariableNames any variable names that were not declared
     * @return the metadata
     */
    private TimeSeriesMetadata readMetadata( DataSource dataSource,
                                             CsvDataProvider data,
                                             Set<String> unconfiguredVariableNames )
    {
        this.validateNextRow( dataSource, data, unconfiguredVariableNames );

        String variableName = data.getString( VARIABLE_NAME );
        String locationName = data.getString( LOCATION );
        String locationDescription = null;

        if ( data.hasColumn( FEATURE_DESCRIPTION_COLUMN ) )
        {
            locationDescription = data.getString( FEATURE_DESCRIPTION_COLUMN );
        }

        Integer locationSrid = null;

        if ( data.hasColumn( FEATURE_SRID_COLUMN ) )
        {
            locationSrid = data.getInt( FEATURE_SRID_COLUMN );
        }

        String locationWkt = null;

        if ( data.hasColumn( FEATURE_WKT_COLUMN ) )
        {
            locationWkt = data.getString( FEATURE_WKT_COLUMN );
        }

        String unitName = data.getString( MEASUREMENT_UNIT );

        Integer timeScaleInMinutes = null;

        if ( data.hasColumn( TIMESCALE_IN_MINUTES_COLUMN ) )
        {
            timeScaleInMinutes = data.getInt( TIMESCALE_IN_MINUTES_COLUMN );
        }

        String timeScaleFunction = null;

        if ( data.hasColumn( TIMESCALE_FUNCTION_COLUMN ) )
        {
            timeScaleFunction = data.getString( TIMESCALE_FUNCTION_COLUMN );
        }

        TimeScaleOuter timeScale = null;

        if ( timeScaleInMinutes != null )
        {
            Duration duration = Duration.of( timeScaleInMinutes,
                                             ChronoUnit.MINUTES );

            if ( timeScaleFunction != null )
            {
                TimeScaleFunction function = TimeScaleFunction.valueOf( timeScaleFunction );
                timeScale = TimeScaleOuter.of( duration, function );
            }
            else
            {
                timeScale = TimeScaleOuter.of( duration );
            }
        }

        Geometry geometry = MessageFactory.getGeometry( locationName,
                                                        locationDescription,
                                                        locationSrid,
                                                        locationWkt );
        Feature location = Feature.of( geometry );

        // Reference datetime is optional, many sources do not have any.
        Map<ReferenceTimeType, Instant> referenceTimes = new EnumMap<>( ReferenceTimeType.class );
        if ( data.hasColumn( REFERENCE_DATETIME_COLUMN ) )
        {
            Instant referenceDatetime = data.getInstant( REFERENCE_DATETIME_COLUMN );
            referenceTimes.put( ReferenceTimeType.UNKNOWN, referenceDatetime );
        }

        return TimeSeriesMetadata.of( referenceTimes,
                                      timeScale,
                                      variableName,
                                      location,
                                      unitName );
    }

    /**
     * @param data the data provider
     * @return the ensemble name
     */

    private String getEnsembleName( CsvDataProvider data )
    {
        String ensembleName = DEFAULT_ENSEMBLE_NAME;

        if ( data.hasColumn( "ensemble_name" ) )
        {
            ensembleName = data.getString( "ensemble_name" );
        }

        if ( data.hasColumn( "qualifier_id" ) )
        {
            ensembleName += ":" + data.getString( "qualifier_id" );
        }

        if ( data.hasColumn( "ensemblemember_id" ) )
        {
            ensembleName += ":" + data.getInt( "ensemblemember_id" );
        }

        return ensembleName;
    }

    /**
     * Validates the next row.
     * @param dataSource the data source
     * @param CsvDataProvider the provider
     * @param unconfiguredVariableNames any variable names that were not declared
     */
    private void validateNextRow( DataSource dataSource,
                                  CsvDataProvider CsvDataProvider,
                                  Set<String> unconfiguredVariableNames )
    {
        String prefix = "Validation error(s) on line " +
                        ( CsvDataProvider.getRowIndex() + 1 )
                        +
                        " in '"
                        +
                        dataSource.getUri()
                        +
                        "', which prevented reading. ";

        StringJoiner errorJoiner = new StringJoiner( " ", prefix, "" );

        // Validate the date-times
        boolean valid = this.validateReferenceTime( CsvDataProvider, errorJoiner )
                        && this.validateValidTime( CsvDataProvider, errorJoiner );

        if ( !CsvDataProvider.hasColumn( VARIABLE_NAME ) )
        {
            valid = false;
            errorJoiner.add( "The provided CSV is missing a 'variable_name' column." );
        }
        else if ( this.hasNoValue( CsvDataProvider.getString( VARIABLE_NAME ) ) )
        {
            errorJoiner.add( "The provided CSV is missing valid 'variable_name' data." );
            valid = false;
        }
        // Only validate if the variable name is declared: #95012
        else if ( Objects.isNull( dataSource.getVariable() )
                  || !CsvDataProvider.getString( VARIABLE_NAME )
                                  .equalsIgnoreCase( dataSource.getVariable()
                                                               .name() ) )
        {
            String foundVariable = CsvDataProvider.getString( VARIABLE_NAME );
            unconfiguredVariableNames.add( foundVariable );
        }

        if ( !CsvDataProvider.hasColumn( LOCATION ) )
        {
            valid = false;
            errorJoiner.add( "The provided CSV is missing a 'location' column." );
        }
        else if ( this.hasNoValue( CsvDataProvider.getString( LOCATION ) ) )
        {
            errorJoiner.add( "The provided CSV is missing valid 'location' data." );
            valid = false;
        }

        if ( !CsvDataProvider.hasColumn( MEASUREMENT_UNIT ) )
        {
            valid = false;
            errorJoiner.add( "The provided CSV is missing a 'measurement_unit' column." );
        }
        else if ( Objects.isNull( CsvDataProvider.getString( MEASUREMENT_UNIT ) ) ||
                  CsvDataProvider.getString( MEASUREMENT_UNIT ).isBlank() )
        {
            errorJoiner.add( "The provided CSV is missing valid 'measurement_unit' data." );
            valid = false;
        }

        if ( !CsvDataProvider.hasColumn( VALUE ) )
        {
            valid = false;
            errorJoiner.add( "The provided CSV is missing a 'value' column." );
        }
        else
        {
            try
            {
                CsvDataProvider.getDouble( VALUE );
            }
            catch ( ClassCastException e )
            {
                errorJoiner.add( "The provided CSV has invalid data within the 'value' column." );
            }
        }

        if ( !valid )
        {
            throw new ReadException( errorJoiner.toString() );
        }
    }

    /**
     * @param CsvDataProvider data provider
     * @param errorJoiner the error joiner
     * @return whether the reference time is valid
     */

    private boolean validateReferenceTime( CsvDataProvider CsvDataProvider, StringJoiner errorJoiner )
    {
        boolean valid = true;

        if ( CsvDataProvider.hasColumn( REFERENCE_DATETIME_COLUMN ) )
        {
            if ( this.hasNoValue( CsvDataProvider.getString( REFERENCE_DATETIME_COLUMN ) ) )
            {
                errorJoiner.add( "The provided csv is missing valid '"
                                 + REFERENCE_DATETIME_COLUMN
                                 + "' data." );
                valid = false;
            }
            else
            {
                try
                {
                    CsvDataProvider.getInstant( REFERENCE_DATETIME_COLUMN );
                }
                catch ( DateTimeParseException | ClassCastException e )
                {
                    errorJoiner.add( "The provided csv has invalid data within the '"
                                     + REFERENCE_DATETIME_COLUMN
                                     + "' column." );
                }
            }
        }

        return valid;
    }

    /**
     * @param CsvDataProvider data provider
     * @param errorJoiner the error joiner
     * @return whether the valid time is valid
     */

    private boolean validateValidTime( CsvDataProvider CsvDataProvider, StringJoiner errorJoiner )
    {
        boolean valid = true;

        if ( !CsvDataProvider.hasColumn( VALUE_DATE ) )
        {
            valid = false;
            errorJoiner.add( "The provided csv is missing a 'value_date' column." );
        }
        else if ( this.hasNoValue( CsvDataProvider.getString( VALUE_DATE ) ) )
        {
            errorJoiner.add( "The provided csv is missing valid 'value_date' data." );
            valid = false;
        }
        else
        {
            try
            {
                CsvDataProvider.getInstant( VALUE_DATE );
            }
            catch ( DateTimeParseException | ClassCastException e )
            {
                errorJoiner.add( "The provided csv has invalid data within the 'value_date' column." );
            }
        }

        return valid;
    }

    /**
     * @param word the word to check
     * @return whether the word is null or blank
     */
    private boolean hasNoValue( String word )
    {
        return Objects.isNull( word ) || word.isBlank();
    }

    /**
     * Constructor.
     */

    private CsvReader()
    {
        // Do not construct
    }
}
