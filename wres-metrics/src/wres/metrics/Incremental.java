package wres.metrics;

import wres.datamodel.pools.Pool;
import wres.datamodel.pools.PoolException;
import wres.datamodel.statistics.Statistic;

/**
 * An interface that allows for a metric output to be updated with additional outputs. Metric outputs may be separated
 * into intermediate outputs and final outputs. Intermediate outputs may be combined with other intermediate outputs 
 * using {@link #combine(Pool, Statistic)}. Final outputs are generated from intermediate outputs using 
 * {@link #complete(Statistic)}.
 * 
 * @param <T> the intermediate output type
 * @param <U> the final output type
 * @author James Brown
 */
public interface Incremental<S extends Pool<?>, T extends Statistic<?>, U extends Statistic<?>>
{

    /**
     * Computes the next intermediate output from the specified input, and combines with a prior intermediate 
     * output.
     * 
     * @param input the input from which to compute the next output
     * @param output the intermediate output to combine with the next output
     * @return the combined output
     * @throws MetricCalculationException if the metric calculation fails
     * @throws PoolException if the prescribed input is null or unexpected
     */

    T combine( S input, T output );

    /**
     * Returns a final output from an intermediate output.
     * 
     * @param output the output to finalize
     * @return the finalized output
     * @throws MetricCalculationException if the metric could not be completed
     * @throws PoolException if the prescribed input is null or unexpected
     */

    U complete( T output );

}