package wres.io.ingesting;

/**
 * For when we cannot proceed with even starting the ingest due to catastrophic
 * failure. For example, hashing the file failed, or communication with the
 * database failed while getting ready to ingest.
 */
public class PreIngestException extends RuntimeException
{
    private static final long serialVersionUID = -5752710252185368485L;

    public PreIngestException( String message, Exception cause )
    {
        super( message, cause );
    }

    public PreIngestException( String message )
    {
        super( message );
    }
}