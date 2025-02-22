package wres.server;

import org.eclipse.jetty.alpn.server.ALPNServerConnectionFactory;
import org.eclipse.jetty.http2.server.HTTP2ServerConnectionFactory;
import org.eclipse.jetty.server.HttpConfiguration;
import org.eclipse.jetty.server.HttpConnectionFactory;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.ServerConnector;
import org.eclipse.jetty.server.handler.ErrorHandler;
import org.eclipse.jetty.server.handler.ResourceHandler;
import org.eclipse.jetty.ee10.servlet.ServletContextHandler;
import org.eclipse.jetty.ee10.servlet.ServletHolder;
import org.eclipse.jetty.util.Callback;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.util.resource.ResourceFactory;
import org.eclipse.jetty.util.thread.QueuedThreadPool;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.servlet.ServletContainer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Runs the core application as a long-running instance or web server that accepts evaluation requests
 */
public class WebServer
{
    private static final Logger LOGGER = LoggerFactory.getLogger( WebServer.class );

    // Intentionally choosing a port unlikely to conflict, also intentionally
    // choosing a port that we did *not* ask to be exposed beyond localhost.
    private static final int DEFAULT_SERVER_PORT = 8010;

    /**
     * We purposely set a count of server threads for memory predictability
     * in the docker environment and also because we intentionally limit the
     * number of calls to a core WRES process.
     */
    private static final int MAX_SERVER_THREADS = 20;

    /**
     * Get the port that is passed in from args, if not present then use default port
     * @param args args potentially containing the port
     * @return the int representing the port to use
     */
    private static int getPortOrDefault( String[] args )
    {
        if ( args.length > 0 )
        {
            try
            {
                return Integer.parseInt( args[0] );
            }
            catch ( NumberFormatException ex )
            {
                LOGGER.debug( "Unable to get port with error: %s", ex );
                return DEFAULT_SERVER_PORT;
            }
        }
        else
        {
            return DEFAULT_SERVER_PORT;
        }
    }

    /**
     * Main method of WebServer used to spin up a long-running worker for evaluations
     * @param args the port to run the server on
     * @throws Exception if the web server could not be created for any reason
     */

    public static void main( String[] args ) throws Exception
    {
        ServletContextHandler context = new ServletContextHandler( ServletContextHandler.NO_SESSIONS );
        context.setContextPath( "/" );
        ServletHolder dynamicHolder = context.addServlet( ServletContainer.class, "/*" );

        // Registering the EvaluationService explicitly so stream redirects are sent real time
        ServletContainer servlet = new ServletContainer( new ResourceConfig( EvaluationService.class ) );
        dynamicHolder.setServlet( servlet );

        // Static handler:
        ResourceHandler resourceHandler = new ResourceHandler()
        {
            @Override
            public boolean handle( Request request,
                                   Response response,
                                   Callback callback )
                    throws Exception
            {
                response.getHeaders()
                        .add( "X-Frame-Options", "DENY" );
                response.getHeaders()
                        .add( "strict-transport-security", "max-age=31536000; includeSubDomains; preload;" );
                return super.handle( request, response, callback );
            }
        };
        ResourceFactory resourceFactory = ResourceFactory.root();
        Resource resource = resourceFactory.newClassLoaderResource( "html", false );
        resourceHandler.setBaseResource( resource );

        // Have to chain/wrap the handler this way to get both static/dynamic:
        resourceHandler.setHandler( context );

        LOGGER.debug( "Setting the base resource to: {}", resource );

        // Fix the max server threads for better stack memory predictability,
        // 1 thread = 1000KiB of stack by default.
        QueuedThreadPool threadPool = new QueuedThreadPool( MAX_SERVER_THREADS );

        Server jettyServer = new Server( threadPool );

        ErrorHandler errorHandler = new ErrorHandler();
        errorHandler.setShowStacks( true );
        jettyServer.setErrorHandler( errorHandler );

        jettyServer.setHandler( resourceHandler );

        HttpConfiguration httpConfig = new HttpConfiguration();

        // Support HTTP/1.1
        HttpConnectionFactory httpOne = new HttpConnectionFactory( httpConfig );

        // Support HTTP/2
        HTTP2ServerConnectionFactory httpTwo = new HTTP2ServerConnectionFactory( httpConfig );

        // Support ALPN
        ALPNServerConnectionFactory alpn = new ALPNServerConnectionFactory();
        alpn.setDefaultProtocol( httpOne.getProtocol() );

        Runtime.getRuntime().addShutdownHook( new Thread( () -> {
            try
            {
                LOGGER.info( "Shutting down the application..." );
                jettyServer.stop();
            }
            catch ( Exception e )
            {
                LOGGER.warn( "Unable to close down application", e );
            }
        } ) );

        try ( ServerConnector serverConnector = new ServerConnector( jettyServer, httpOne, httpTwo, alpn ) )
        {
            int port = getPortOrDefault( args );
            // Only listen on localhost, this process is intended to be managed
            // by other processes running locally, e.g. a shim or a UI.
            serverConnector.setHost( "127.0.0.1" );
            serverConnector.setPort( port );
            serverConnector.setAcceptedSendBufferSize( -1 );
            ServerConnector[] serverConnectors = { serverConnector };
            jettyServer.setConnectors( serverConnectors );

            jettyServer.start();
            jettyServer.dump( System.err ); // NOSONAR
            String helpMessage =
                    String.format( "Server started. Visit localhost:%d/evaluation for usage instructions", port );
            LOGGER.info( helpMessage );

            jettyServer.join();
        }
        catch ( InterruptedException ie )
        {
            LOGGER.warn( "WRES Server was interrupted.", ie );
            Thread.currentThread()
                  .interrupt();
        }
        finally
        {
            LOGGER.info( "DESTROYING SERVER" );
            jettyServer.destroy();
        }
    }
}


