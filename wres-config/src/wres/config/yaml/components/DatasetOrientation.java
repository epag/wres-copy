package wres.config.yaml.components;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * The orientation of a dataset within an evaluation.
 * @author James Brown
 */
public enum DatasetOrientation
{
    /** A left dataset. Whereas "observed" is the user-friendly name, "left" is the pair orientation in software. */
    @JsonProperty( "observed" ) LEFT( "observed" ),
    /** A right dataset. Whereas "predicted" is the user-friendly name, "right" is the pair orientation in software. */
    @JsonProperty( "predicted" ) RIGHT( "predicted" ),
    /** A baseline dataset. */
    @JsonProperty( "baseline" ) BASELINE( "baseline" );

    private final String stringName;

    DatasetOrientation( String stringName )
    {
        this.stringName = stringName;
    }

    @Override
    public String toString()
    {
        return stringName;
    }
}