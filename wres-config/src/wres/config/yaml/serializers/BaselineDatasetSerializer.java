package wres.config.yaml.serializers;

import java.io.IOException;
import java.util.Objects;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import wres.config.yaml.components.BaselineDataset;

/**
 * Serializes a {@link BaselineDataset}, removing the "dataset" field name.
 * @author James Brown
 */
public class BaselineDatasetSerializer extends JsonSerializer<BaselineDataset>
{
    @Override
    public void serialize( BaselineDataset dataset, JsonGenerator writer, SerializerProvider serializers )
            throws IOException
    {
        // Write the basic dataset
        writer.writeObject( dataset.dataset() );

        // Persistence defined?
        if ( Objects.nonNull( dataset.persistence() ) )
        {
            writer.writeNumberField( "persistence", dataset.persistence() );
        }

        // Separate metrics defined with a non-default setting?
        if ( Objects.nonNull( dataset.separateMetrics() ) && Boolean.TRUE.equals( dataset.separateMetrics() ) )
        {
            writer.writeBooleanField( "separate_metrics", true );
        }
    }

    @Override
    public boolean isUnwrappingSerializer() {
        return true;
    }
}