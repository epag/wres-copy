package wres.io.writing.csv.statistics;

import wres.io.writing.WriteException;

/**
 * A runtime exception associated with writing metric outputs of Comma Separated Values (CSV).
 * 
 * @author James Brown
 */

public class CommaSeparatedWriteException extends WriteException
{

    /**
     * Serial identifier.
     */

    private static final long serialVersionUID = -9113524805560375493L;

    /**
     * Constructs an {@link CommaSeparatedWriteException} with no message.
     */

    public CommaSeparatedWriteException()
    {
        super();
    }

    /**
     * Constructs a {@link CommaSeparatedWriteException} with the specified message.
     * 
     * @param message the message.
     */

    public CommaSeparatedWriteException( final String message )
    {
        super( message );
    }

    /**
     * Constructs a {@link CommaSeparatedWriteException} with the specified message.
     * 
     * @param message the message.
     * @param cause the cause of the exception
     */

    public CommaSeparatedWriteException( final String message, final Throwable cause )
    {
        super( message, cause );
    }

}