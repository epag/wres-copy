package wres.io.ingesting;

import java.time.Instant;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.UnaryOperator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.config.yaml.components.DataType;
import wres.config.yaml.components.DatasetOrientation;
import wres.datamodel.time.TimeSeries;
import wres.io.reading.DataSource;
import wres.io.reading.TimeSeriesTuple;
import wres.statistics.generated.ReferenceTime;

/**
 * Tracks information about the time-series as they are read and ingested, returning the supplied time-series for
 * convenience.
 *
 * @author James Brown
 */
public class TimeSeriesTracker implements UnaryOperator<TimeSeriesTuple>
{
    /** Logger. */
    private static final Logger LOGGER = LoggerFactory.getLogger( TimeSeriesTracker.class );

    /** The time-series data types, one per dataset. */
    private final Map<DatasetOrientation, DataType> dataTypes;

    /**
     * Creates an instance.
     * @return an instance
     */

    public static TimeSeriesTracker of()
    {
        return new TimeSeriesTracker();
    }

    @Override
    public TimeSeriesTuple apply( TimeSeriesTuple timeSeriesTuple )
    {
        if ( Objects.isNull( timeSeriesTuple ) )
        {
            LOGGER.debug( "While tracking time-series, encountered a null time-series that cannot be tracked." );

            return null;
        }

        DataSource dataSource = timeSeriesTuple.getDataSource();

        if ( Objects.nonNull( dataSource ) )
        {
            DatasetOrientation orientation = dataSource.getDatasetOrientation();
            DataType dataType = this.getDataType( timeSeriesTuple );
            if( Objects.nonNull( orientation ) && Objects.nonNull( dataType ) )
            {
                this.dataTypes.putIfAbsent( orientation, dataType );
            }
        }
        else if ( LOGGER.isDebugEnabled() )
        {
            LOGGER.debug( "While tracking time-series, encountered a time-series with a null data source that cannot "
                          + "be tracked. The time-series was: {}.", timeSeriesTuple );
        }

        return timeSeriesTuple;
    }

    /**
     * Inspects the time-series and infers the data type.
     *
     * @param timeSeriesTuple the time-series
     * @return the data type or null of no type could be detected
     */

    private DataType getDataType( TimeSeriesTuple timeSeriesTuple )
    {
        if ( timeSeriesTuple.hasEnsembleTimeSeries() )
        {
            return DataType.ENSEMBLE_FORECASTS;
        }
        else if ( timeSeriesTuple.hasSingleValuedTimeSeries() )
        {
            TimeSeries<Double> timeSeries = timeSeriesTuple.getSingleValuedTimeSeries();
            Map<ReferenceTime.ReferenceTimeType, Instant> referenceTimes = timeSeries.getReferenceTimes();
            if ( referenceTimes.containsKey( ReferenceTime.ReferenceTimeType.T0 ) )
            {
                return DataType.SINGLE_VALUED_FORECASTS;
            }
            else if ( referenceTimes.containsKey( ReferenceTime.ReferenceTimeType.ANALYSIS_START_TIME ) )
            {
                return DataType.ANALYSES;
            }
        }

        // Unknown, could be any of several types
        return null;
    }

    /**
     * @return a snapshot of the data types of the time-series tracked so far
     */

    public Map<DatasetOrientation, DataType> getDataTypes()
    {
        return Collections.unmodifiableMap( dataTypes );
    }

    /**
     * Hidden constructor.
     */
    private TimeSeriesTracker()
    {
        this.dataTypes = new ConcurrentHashMap<>();
    }
}