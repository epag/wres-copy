package wres.io.reading.wrds.geography;

import static java.nio.charset.StandardCharsets.UTF_8;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;

import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;

import org.apache.commons.lang3.tuple.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.databind.ObjectMapper;

import wres.config.yaml.DeclarationException;
import wres.config.yaml.components.EvaluationDeclaration;
import wres.config.yaml.components.FeatureAuthority;
import wres.io.ingesting.PreIngestException;
import wres.io.reading.ReaderUtilities;
import wres.io.reading.web.WebClient;

/**
 * <p>A feature service implementation for the WRDS feature service, which enables bulk lookup of features for
 * prescribed feature dimensions and retrieval of features from a supplied URI.
 *
 * <p>TODO: abstract an interface from this class if more than one feature service implementation arises. In that case,
 * the {@link WrdsFeatureFiller} should be changed to accept an instance of the abstracted class. The objective would
 * be an improved separation of two concerns, namely filling out a sparse declaration with dense features on the one 
 * hand and acquiring named features from a feature service using partial or implicit declaration, on the other.
 *
 * @author Jesse Bickel
 * @author James Brown
 */

class WrdsFeatureService
{
    private static final Pair<SSLContext, X509TrustManager> SSL_CONTEXT;
    private static final String AND_MISSING = " and missing ";

    static
    {
        try
        {
            SSL_CONTEXT = ReaderUtilities.getSslContextTrustingDodSignerForWrds();
        }
        catch ( PreIngestException e )
        {
            throw new ExceptionInInitializerError( "Failed to acquire the TLS context for connecting to WRDS: "
                                                   + e.getMessage() );
        }
    }

    private static final WebClient WEB_CLIENT = new WebClient( SSL_CONTEXT );
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    private static final String DELIMITER = "/";

    protected static final String CROSSWALK_ONLY_FLAG = "?identifiers=true";

    private static final Logger LOGGER = LoggerFactory.getLogger( WrdsFeatureService.class );

    private static final String EXPLANATION_OF_WHY_AND_WHAT_TO_DO = "By declaring a feature, WRES interprets it as an "
                                                                    + "intent to use that feature in the evaluation. "
                                                                    + "If the corresponding feature cannot be found or "
                                                                    + "has no correlation from the featureService, "
                                                                    + "WRES prefers to inform you that the declared "
                                                                    + "evaluation including that feature cannot be "
                                                                    + "started. Options to resolve include any of: "
                                                                    + "investigate the URL above in a web browser, "
                                                                    + "report to the geographic feature service team "
                                                                    + "the service issue or the data issue (e.g. "
                                                                    + "expected correlation), omit this feature from "
                                                                    + "the declaration, include a complete feature "
                                                                    + "correlation declaration, or contact the WRES "
                                                                    + "team for help.";
    private static final int MAX_SAFE_URL_LENGTH = 2000;

    /**
     * Given a dimension "from" and dimension "to", look up the set of features.
     * @param evaluation The declaration to use when printing error message.
     * @param featureService The featureService element, optional unless lookup
     *                       ends up being required.
     * @param from The known feature dimension, in which "featureNames" exist.
     * @param to The unknown feature dimension, the dimension to search in.
     * @param featureNames The names in the "from" dimension to look for in "to"
     * @return The Set of name pairs: "from" as key, "to" as value.
     * @throws DeclarationException When a feature service was needed but null
     * @throws PreIngestException When the count of features in response differs from the count of feature names
     *                            requested, or when the requested "to" was not found in the response.
     * @throws UnsupportedOperationException When unknown "from" or "to" given or the API version is insupported
     * @throws NullPointerException When projectConfig or featureNames is null.
     */

    static Map<String, String> bulkLookup( EvaluationDeclaration evaluation,
                                           wres.config.yaml.components.FeatureService featureService,
                                           FeatureAuthority from,
                                           FeatureAuthority to,
                                           Set<String> featureNames )
    {
        Objects.requireNonNull( evaluation );
        Objects.requireNonNull( featureNames );

        Map<String, String> locations = new HashMap<>( featureNames.size() );

        if ( from.equals( to ) )
        {
            // In the case where the original dimension is same as the new
            // dimension, no lookup is needed. Fill out directly.
            for ( String feature : featureNames )
            {
                locations.put( feature, feature );
            }

            LOGGER.debug( "Did not ask a service because from={}, to={}, returned {}",
                          from,
                          to,
                          locations );
            return Collections.unmodifiableMap( locations );
        }

        if ( from == FeatureAuthority.CUSTOM )
        {
            // We will have no luck asking for features based on an unknown
            // dimension. But this call will happen sometimes, so return empty.
            LOGGER.debug( "Did not ask a service because from={}", from );
            return Collections.emptyMap();
        }

        if ( Objects.isNull( featureService ) )
        {
            throw new DeclarationException( "Attempted to look up features with "
                                            + from
                                            + AND_MISSING
                                            + to
                                            + ", but could not because the 'feature_service' declaration was either "
                                            + "missing. Add a 'uri' to the 'feature_service' with the non-varying part "
                                            + "of the URL of the feature service to have WRES ask it for features." );
        }

        if ( Objects.isNull( featureService.uri() ) )
        {
            throw new DeclarationException( "Attempted to look up features with "
                                            + from
                                            + AND_MISSING
                                            + to
                                            + ", but could not because the 'feature_service'' declaration was missing "
                                            + "a 'uri' option. Add a 'uri' with the non-varying part of the URL of the "
                                            + "feature service to have WRES ask it for features." );
        }

        URI featureServiceBaseUri = featureService.uri();
        Set<String> batchOfFeatureNames = new HashSet<>();

        // Track how large the URL gets. Base uri, from, plus 2 for the slashes.
        int baseLength = 2 + featureServiceBaseUri.toString()
                                                  .length()
                         + from.toString()
                               .length();
        int totalLength = baseLength;

        for ( String featureName : featureNames )
        {
            int addedLength = featureName.length() + 1;

            if ( totalLength + addedLength <= MAX_SAFE_URL_LENGTH )
            {
                LOGGER.trace( "totalLength {} + addedLength {} <= MAX_SAFE_URL_LENGTH {}",
                              totalLength,
                              addedLength,
                              MAX_SAFE_URL_LENGTH );
                batchOfFeatureNames.add( featureName );
                totalLength += addedLength;
                continue;
            }

            LOGGER.debug( "One more feature name would be unsafe length URL: {}",
                          batchOfFeatureNames );
            // At this point there are more features to go, but we hit the safe
            // URL length limit.
            Map<String, String> batchOfResults =
                    WrdsFeatureService.getBatchOfFeatures( from,
                                                           to,
                                                           featureServiceBaseUri,
                                                           batchOfFeatureNames );
            locations.putAll( batchOfResults );
            batchOfFeatureNames = new HashSet<>();
            totalLength = baseLength;
        }

        LOGGER.debug( "Last of the feature names to request: {}",
                      batchOfFeatureNames );
        // Get the remaining features.
        Map<String, String> batchOfResults =
                WrdsFeatureService.getBatchOfFeatures( from,
                                                       to,
                                                       featureServiceBaseUri,
                                                       batchOfFeatureNames );
        locations.putAll( batchOfResults );

        LOGGER.debug( "For from={} and to={}, found these: {}",
                      from,
                      to,
                      locations );
        return Collections.unmodifiableMap( locations );
    }

    /**
     * @param uri a uri to read
     * @return the list of WRDS locations
     * @throws UnsupportedOperationException if the API version is unsupported
     */

    static List<WrdsLocation> read( URI uri )
    {
        byte[] rawResponseBytes = WrdsFeatureService.getRawResponseBytes( uri );

        //Get the version information
        if ( LOGGER.isDebugEnabled() )
        {
            try
            {
                WrdsLocationRootVersionDocument versionDoc =
                        OBJECT_MAPPER.readValue( rawResponseBytes, WrdsLocationRootVersionDocument.class );
                if ( versionDoc.isDeploymentInfoPresent() )
                {
                    LOGGER.debug( "Using WRDS API version {}.", versionDoc.getDeploymentInfo()
                                                                          .version() );
                }
                else
                {
                    throw new UnsupportedOperationException( "Unsupported API version: could not find the expected "
                                                             + "deployment information in the threshold response body." );
                }
            }
            catch ( IOException e )
            {
                LOGGER.debug( "Failed to parse API version information from {}.", uri );
            }
        }

        // Read the locations
        try
        {
            WrdsLocationRootDocument doc = OBJECT_MAPPER.readValue( rawResponseBytes,
                                                                    WrdsLocationRootDocument.class );
            return doc.getLocations();
        }
        catch ( IOException ioe )
        {
            throw new PreIngestException( "Failed to parse location information from document from "
                                          + uri );
        }
    }

    /**
     * Make a request for the complete given featureNames, already vetted to be less than the maximum safe URL length
     * when to, featureServiceBaseUri, and featureNames are joined together with slashes and commas.
     * @param from The known feature authority, in which "featureNames" exist.
     * @param to The unknown feature authority, the dimension to search in.
     * @param featureServiceBaseUri The base URI from which to build a full URI.
     * @param featureNames The names in the "from" dimension to look for in "to"
     * @return The Set of name pairs: "from" as key, "to" as value.
     * @throws PreIngestException When the count of features in response differs from the count of feature names
     *                            requested, or when the requested "to" was not found in the response.
     * @throws NullPointerException When any argument is null.
     * @throws UnsupportedOperationException When unknown "from" or "to" given.
     * @throws IllegalArgumentException When any arg is null.
     */
    private static Map<String, String> getBatchOfFeatures( FeatureAuthority from,
                                                           FeatureAuthority to,
                                                           URI featureServiceBaseUri,
                                                           Set<String> featureNames )
    {
        Objects.requireNonNull( from );
        Objects.requireNonNull( to );
        Objects.requireNonNull( featureServiceBaseUri );
        Objects.requireNonNull( featureNames );

        if ( featureNames.isEmpty() )
        {
            throw new IllegalArgumentException( "Encountered an empty batch of feature names." );
        }

        Map<String, String> batchOfLocations = new HashMap<>( featureNames.size() );
        StringJoiner joiner = new StringJoiner( "," );
        featureNames.forEach( joiner::add );
        String commaDelimitedFeatures = joiner.toString();

        // Add to request set. (Request directly for now)
        String path = featureServiceBaseUri.getPath();
        String fullPath = path + DELIMITER
                          + from.name()
                                .toLowerCase()
                          + DELIMITER
                          + commaDelimitedFeatures
                          + DELIMITER
                          + CROSSWALK_ONLY_FLAG;
        URI uri = featureServiceBaseUri.resolve( fullPath )
                                       .normalize();

        //Read features from either V3 or the older API.
        List<WrdsLocation> wrdsLocations = WrdsFeatureService.read( uri );
        int countOfLocations = wrdsLocations.size();

        if ( countOfLocations != featureNames.size() )
        {
            throw new PreIngestException( "Response from WRDS at " + uri
                                          + " did not include exactly "
                                          + featureNames.size()
                                          + " locations, "
                                          + " but had "
                                          + countOfLocations
                                          + ". "
                                          + EXPLANATION_OF_WHY_AND_WHAT_TO_DO );
        }

        List<WrdsLocation> fromWasNullOrBlank = new ArrayList<>( 2 );
        List<WrdsLocation> toWasNullOrBlank = new ArrayList<>( 2 );

        for ( WrdsLocation location : wrdsLocations )
        {
            String original = WrdsFeatureService.getFeatureNameFromAuthority( from, location, fromWasNullOrBlank );
            String found = WrdsFeatureService.getFeatureNameFromAuthority( to, location, toWasNullOrBlank );
            batchOfLocations.put( original, found );
        }

        if ( !fromWasNullOrBlank.isEmpty()
             || !toWasNullOrBlank.isEmpty() )
        {
            throw new PreIngestException( "From the response at " + uri
                                          + " the following were missing "
                                          + from.name()
                                                .toLowerCase()
                                          + " (from) values: "
                                          + fromWasNullOrBlank
                                          + " and/or "
                                          + "the following were missing "
                                          + to.name()
                                              .toLowerCase()
                                          + " (to) values: "
                                          + toWasNullOrBlank
                                          + ". "
                                          + EXPLANATION_OF_WHY_AND_WHAT_TO_DO );
        }

        return Collections.unmodifiableMap( batchOfLocations );
    }

    /**
     * Gets the feature name from the feature authority.
     * @param authority the feature authority
     * @param location the location
     * @param fromWasNullOrBlank a list of null or blank names
     * @return the feature name
     */

    private static String getFeatureNameFromAuthority( FeatureAuthority authority,
                                                       WrdsLocation location,
                                                       List<WrdsLocation> fromWasNullOrBlank )
    {
        String original;
        if ( authority == FeatureAuthority.NWS_LID )
        {
            String nwsLid = location.nwsLid();

            if ( Objects.isNull( nwsLid ) || nwsLid.isBlank() )
            {
                fromWasNullOrBlank.add( location );
            }

            original = nwsLid;
        }
        else if ( authority == FeatureAuthority.USGS_SITE_CODE )
        {
            String usgsSiteCode = location.usgsSiteCode();

            if ( Objects.isNull( usgsSiteCode )
                 || usgsSiteCode.isBlank() )
            {
                fromWasNullOrBlank.add( location );
            }

            original = usgsSiteCode;
        }
        else if ( authority == FeatureAuthority.NWM_FEATURE_ID )
        {
            String nwmFeatureId = location.nwmFeatureId();

            if ( Objects.isNull( nwmFeatureId )
                 || nwmFeatureId.isBlank() )
            {
                fromWasNullOrBlank.add( location );
            }

            original = nwmFeatureId;
        }
        else
        {
            throw new UnsupportedOperationException( "Unknown geographic feature dimension "
                                                     + authority );
        }

        return original;
    }

    private static byte[] getRawResponseBytes( URI uri )
    {
        Objects.requireNonNull( uri );

        if ( !uri.isAbsolute() )
        {
            throw new IllegalArgumentException( "URI passed must be absolute, not "
                                                + uri );
        }

        if ( Objects.isNull( uri.getScheme() ) )
        {
            throw new IllegalArgumentException( "URI passed must have scheme, not "
                                                + uri );
        }

        LOGGER.info( " Getting location data from {}", uri );
        byte[] rawResponseBytes;

        if ( uri.getScheme()
                .equalsIgnoreCase( "file" ) )
        {
            rawResponseBytes = WrdsFeatureService.readFromFile( uri );
        }
        else
        {
            rawResponseBytes = WrdsFeatureService.readFromWeb( uri );
        }

        if ( LOGGER.isDebugEnabled() )
        {
            LOGGER.debug( "Raw response, decoded as UTF-8: {}",
                          new String( rawResponseBytes, UTF_8 ) );
        }

        return rawResponseBytes;
    }

    private static byte[] readFromWeb( URI uri )
    {
        try ( WebClient.ClientResponse response = WEB_CLIENT.getFromWeb( uri ) )
        {
            if ( response.getStatusCode() != 200 )
            {
                throw new PreIngestException( "Failed to read location data from "
                                              + uri
                                              + " due to HTTP status "
                                              + response.getStatusCode() );
            }

            return response.getResponse()
                           .readAllBytes();
        }
        catch ( IOException ioe )
        {
            throw new PreIngestException( "Unable to read location data from web at "
                                          + uri,
                                          ioe );
        }
    }

    private static byte[] readFromFile( URI uri )
    {
        try ( InputStream response = new FileInputStream( new File( uri ) ) )
        {
            return response.readAllBytes();
        }
        catch ( IOException ioe )
        {
            throw new PreIngestException( "Unable to read location data from file at "
                                          + uri,
                                          ioe );
        }
    }

    private WrdsFeatureService()
    {
        // Do not construct
    }

}