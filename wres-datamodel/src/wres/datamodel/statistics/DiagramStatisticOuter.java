package wres.datamodel.statistics;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import net.jcip.annotations.Immutable;
import wres.datamodel.MetricConstants.MetricDimension;
import wres.datamodel.VectorOfDoubles;
import wres.statistics.generated.DiagramStatistic;
import wres.statistics.generated.DiagramStatistic.DiagramStatisticComponent;

/**
 * A wrapping for a {@link DiagramStatistic}.
 * 
 * @author james.brown@hydrosolved.com
 */
@Immutable
public class DiagramStatisticOuter implements Statistic<DiagramStatistic>
{
    /**
     * The diagram.
     */

    private final DiagramStatistic diagram;

    /**
     * Local set of component names from the canonical {@link diagram}.
     */

    private final SortedSet<MetricDimension> componentNames;

    /**
     * The metadata associated with the statistic.
     */

    private final StatisticMetadata metadata;

    /**
     * Construct the diagram.
     * 
     * @param diagram the verification diagram
     * @param meta the metadata
     * @throws StatisticException if any of the inputs are invalid
     * @return an instance of the output
     */

    public static DiagramStatisticOuter of( DiagramStatistic diagram,
                                            StatisticMetadata meta )
    {
        return new DiagramStatisticOuter( diagram, meta );
    }

    /**
     * Returns a prescribed vector from the map or null if no mapping exists.
     * 
     * @param identifier the identifier
     * @return a vector or null
     */

    public VectorOfDoubles getComponent( MetricDimension identifier )
    {
        VectorOfDoubles returnMe = null;

        if ( this.hasComponent( identifier ) )
        {
            for ( DiagramStatisticComponent next : this.getData()
                                                       .getStatisticsList() )
            {
                if ( identifier.name().equals( next.getName().name() ) )
                {
                    List<Double> values = next.getValuesList();
                    returnMe = VectorOfDoubles.of( values.toArray( new Double[values.size()] ) );
                }
            }
        }

        return returnMe;
    }

    /**
     * Returns true if the store contains a mapping for the prescribed identifier, false otherwise.
     * 
     * @param identifier the identifier
     * @return true if the mapping exists, false otherwise
     */

    public boolean hasComponent( MetricDimension identifier )
    {
        return this.componentNames.contains( identifier );
    }

    /**
     * Returns the diagram component names.
     * 
     * @return the component names
     */

    public SortedSet<MetricDimension> getComponentNames()
    {
        return this.componentNames; // Immutable on construction.
    }

    @Override
    public StatisticMetadata getMetadata()
    {
        return this.metadata;
    }

    @Override
    public DiagramStatistic getData()
    {
        return this.diagram;
    }

    @Override
    public boolean equals( final Object o )
    {
        if ( ! ( o instanceof DiagramStatisticOuter ) )
        {
            return false;
        }
        final DiagramStatisticOuter v = (DiagramStatisticOuter) o;
        return this.getMetadata().equals( v.getMetadata() ) && this.getData().equals( v.getData() );
    }

    @Override
    public int hashCode()
    {
        return Objects.hash( this.getMetadata(), this.getData() );
    }

    @Override
    public String toString()
    {
        ToStringBuilder builder = new ToStringBuilder( this, ToStringStyle.SHORT_PREFIX_STYLE );

        builder.append( "metric name", this.getData().getMetric().getName() );

        this.getData()
            .getStatisticsList()
            .forEach( component -> builder.append( "component name", component.getName() )
                                          .append( "component values", component.getValuesList() ) );

        return builder.toString();
    }

    /**
     * Construct the statistic.
     * 
     * @param diagram the verification diagram
     * @param meta the metadata
     * @throws StatisticException if any of the inputs are invalid
     */

    private DiagramStatisticOuter( DiagramStatistic diagram, StatisticMetadata meta )
    {
        if ( Objects.isNull( diagram ) )
        {
            throw new StatisticException( "Specify a non-null output." );
        }
        if ( Objects.isNull( meta ) )
        {
            throw new StatisticException( "Specify non-null metadata." );
        }

        this.diagram = diagram;
        this.metadata = meta;

        SortedSet<MetricDimension> componentNames = new TreeSet<>();

        for ( DiagramStatisticComponent next : this.getData().getStatisticsList() )
        {
            componentNames.add( MetricDimension.valueOf( next.getName().name() ) );
        }

        this.componentNames = Collections.unmodifiableSortedSet( componentNames );
    }

}