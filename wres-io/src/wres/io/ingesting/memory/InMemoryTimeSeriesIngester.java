package wres.io.ingesting.memory;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import wres.config.generated.LeftOrRightOrBaseline;
import wres.datamodel.time.TimeSeriesStore;
import wres.io.ingesting.IngestResult;
import wres.io.ingesting.TimeSeriesIngester;
import wres.io.reading.DataSource;
import wres.io.reading.TimeSeriesTuple;

/**
 * Facade for ingesting time-series into an in-memory {@link TimeSeriesStore}.
 * @author James Brown
 */

public class InMemoryTimeSeriesIngester implements TimeSeriesIngester
{
    /** The time-series store builder to populate with time-series. */
    private final TimeSeriesStore.Builder timeSeriesStoreBuilder;

    /**
     * Create an instance.
     * @param timeSeriesStoreBuilder the time-series store builder to populate
     * @return an instance
     * @throws NullPointerException if the input is null
     */

    public static InMemoryTimeSeriesIngester of( TimeSeriesStore.Builder timeSeriesStoreBuilder )
    {
        return new InMemoryTimeSeriesIngester( timeSeriesStoreBuilder );
    }

    @Override
    public List<IngestResult> ingest( Stream<TimeSeriesTuple> timeSeriesTuple, DataSource outerSource )
    {
        Objects.requireNonNull( timeSeriesTuple );
        Objects.requireNonNull( outerSource );

        // Close the stream on completion
        try ( timeSeriesTuple )
        {
            List<TimeSeriesTuple> listedTuples = timeSeriesTuple.collect( Collectors.toList() );
            for ( TimeSeriesTuple nextTuple : listedTuples )
            {
                DataSource innerSource = nextTuple.getDataSource();
                
                // Single-valued time-series?
                if ( nextTuple.hasSingleValuedTimeSeries() )
                {
                    this.timeSeriesStoreBuilder.addSingleValuedSeries( nextTuple.getSingleValuedTimeSeries(),
                                                                       innerSource.getLeftOrRightOrBaseline() );

                    // Add in all other contexts too
                    for ( LeftOrRightOrBaseline lrb : innerSource.getLinks() )
                    {
                        this.timeSeriesStoreBuilder.addSingleValuedSeries( nextTuple.getSingleValuedTimeSeries(), lrb );
                    }
                }

                // Ensemble time-series?
                if ( nextTuple.hasEnsembleTimeSeries() )
                {
                    this.timeSeriesStoreBuilder.addEnsembleSeries( nextTuple.getEnsembleTimeSeries(),
                                                                   innerSource.getLeftOrRightOrBaseline() );

                    // Add in all other contexts too
                    for ( LeftOrRightOrBaseline lrb : innerSource.getLinks() )
                    {
                        this.timeSeriesStoreBuilder.addEnsembleSeries( nextTuple.getEnsembleTimeSeries(), lrb );
                    }
                }
            }

            // Arbitrary surrogate key, since this is an in-memory ingest
            return List.of( new IngestResultInMemory( outerSource ) );
        }
    }

    /**
     * Hidden constructor.
     * @param timeSeriesStoreBuilder the time-series store builder
     */
    private InMemoryTimeSeriesIngester( TimeSeriesStore.Builder timeSeriesStoreBuilder )
    {
        Objects.requireNonNull( timeSeriesStoreBuilder );
        this.timeSeriesStoreBuilder = timeSeriesStoreBuilder;
    }
}