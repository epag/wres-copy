package wres.vis.client;

import java.nio.file.Path;
import java.util.Collection;
import java.util.Set;
import java.util.function.Function;

import wres.statistics.generated.Consumer;
import wres.statistics.generated.Evaluation;
import wres.statistics.generated.Statistics;
import wres.events.ConsumerException;

/**
 * <p>An interface that supplies consumers for evaluation statistics. The interface supplies two types of consumers:
 * 
 * <ol>
 * <li>Consumers that consume one pool of statistics at a time. In other words, consumption happens immediately.</li>
 * <li>Consumers that consume multiple pools of statistics associated with a message group, such as a geographic 
 * feature. In other words, consumption is deferred until all statistics are available.</li>
 * </ol>
 * 
 * 
 * <p>A consumer is supplied at evaluation time based on an {@link Evaluation} description. Consumers are supplied at 
 * evaluation time because the consumers may depend on the evaluation description, either to determine consumers 
 * required or to use the description of the evaluation to qualify the statistics consumed.
 * 
 * <p>Each consumer consumes a collection of {@link Statistics} and returns a set of {@link Path} mutated. The consumer
 * may contain one or more underlying consumers that each consume the same statistics.
 * 
 * <p><b>Implementation notes:</b>
 * 
 * <p>At least one of the methods of this interface should return a non-trivial consumer. Both methods should return a
 * non-trivial consumer if both styles of consumption are required (incremental and grouped). For example, if the 
 * consumption abstracts a single consumer and that consumer writes to a numerical format whereby each pool of 
 * statistics can be written as it arrives, then the {@link #getGroupedConsumer(Evaluation, String)} may return a
 * trivial consumer as follows:
 * 
 * <p><code>return statistics {@literal ->} Set.of();</code>
 * 
 * @author james.brown@hydrosolved.com
 */

public interface ConsumerFactory
{

    /**
     * Creates a consumer for a given evaluation description.
     * 
     * @param evaluation the evaluation description
     * @param evaluationId the evaluation identifier
     * @return a consumer
     * @throws ConsumerException if the consumer could not be created for any reason
     */

    Function<Collection<Statistics>, Set<Path>> getConsumer( Evaluation evaluation, String evaluationId );

    /**
     * Creates a consumer of grouped statistics for a given evaluation description.
     * 
     * @param evaluation the evaluation description
     * @param evaluationId the evaluation identifier
     * @return a grouped consumer
     * @throws ConsumerException if the consumer could not be created for any reason
     */

    Function<Collection<Statistics>, Set<Path>> getGroupedConsumer( Evaluation evaluation, String evaluationId );
    
    /**
     * Returns a basic description of the consumers that are created by this factory, including the formats they offer.
     * 
     * @return the consumer description
     */

    Consumer getConsumerDescription();
    
}