package wres.eventsbroker.embedded;

import java.io.Closeable;
import java.io.IOException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

import org.apache.qpid.server.SystemLauncher;
import org.apache.qpid.server.SystemLauncherListener;
import org.apache.qpid.server.model.Broker;
import org.apache.qpid.server.model.Port;
import org.apache.qpid.server.model.SystemConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * An embedded broker for publishing and subscribing to evaluation messages.
 *
 * Based on https://cwiki.apache.org/confluence/display/qpid/How+to+embed+Qpid+Broker-J
 * which came from a link found at
 * https://mail-archives.apache.org/mod_mbox/qpid-users/201806.mbox/browser
 * Configuration of dead letter queues based on: 
 * <p><a href = "https://qpid.apache.org/releases/qpid-broker-j-8.0.0/book/Java-Broker-Runtime-Handling-Undeliverable-Messages.html">Undeliverable messages</a>
 */

public class EmbeddedBroker implements Closeable
{
    private static final Logger LOGGER = LoggerFactory.getLogger( EmbeddedBroker.class );

    /**
     * Default broker configuration on the classpath.
     */

    private static final String INITIAL_CONFIGURATION = "embedded-broker-config.json";

    /**
     * Broker launcher.
     */

    private final SystemLauncher systemLauncher;

    /**
     * Port listener.
     */

    private final PortExtractingLauncherListener listener;

    /**
     * Launcher options.
     */

    private final Map<String, Object> launchOptions;

    /**
     * Returns a broker instance with default launch options.
     * 
     * @return a broker instance with default options.
     */

    public static EmbeddedBroker of()
    {
        URL initialConfig = EmbeddedBroker.class.getClassLoader()
                                                .getResource( INITIAL_CONFIGURATION );

        if ( Objects.isNull( initialConfig ) )
        {
            throw new CouldNotStartEmbeddedBrokerException( "Expected a resource named '"
                                                            + INITIAL_CONFIGURATION
                                                            + "' on the classpath." );
        }
        Map<String, Object> options = new HashMap<>();
        options.put( "type", "Memory" );
        options.put( "initialConfigurationLocation",
                     initialConfig.toExternalForm() );
        options.put( "startupLoggedToSystemOut", true );

        LOGGER.debug( "Created new embedded broker with options {}.", options );

        return new EmbeddedBroker( options );
    }

    /**
     * Starts the broker.
     * 
     * @throws CouldNotStartEmbeddedBrokerException if the broker could not be started for any reason.
     */

    public void start()
    {
        LOGGER.debug( "Starting embedded broker with launch options {}.", this.launchOptions );

        try
        {
            this.systemLauncher.startup( this.launchOptions );
        }
        catch ( Exception e )
        {
            throw new CouldNotStartEmbeddedBrokerException( "Failed to start an embedded broker using the initial "
                                                            + "configuration in '"
                                                            + INITIAL_CONFIGURATION
                                                            + "'.",
                                                            e );
        }

        LOGGER.debug( "When starting the embedded broker, discovered the following bound ports {}.",
                      this.getBoundPorts() );

        LOGGER.debug( "Finished starting embedded broker with launch options {}.", this.launchOptions );
    }

    /**
     * Returns a mapping of TCP ports bound by the embedded broker. Typical ports are for protocols AMQP and HTTP. This
     * will only return a non-empty mapping after {@link #start()} has been called.
     * 
     * @return the port mapping 
     */

    public Map<String, Integer> getBoundPorts()
    {
        Map<String, Integer> ports = this.listener.ports;

        if ( Objects.isNull( ports ) )
        {
            return Collections.emptyMap();
        }

        return ports; // Immutable on construction
    }

    @Override
    public void close() throws IOException
    {
        LOGGER.debug( "Closing embedded broker." );

        this.shutdown();

        LOGGER.debug( "Embedded broker closed." );
    }

    /**
     * Kills the broker.
     */

    private void shutdown()
    {
        this.systemLauncher.shutdown();
    }

    /**
     * Hidden constructor.
     * 
     * @param options the launch options
     * @throws NullPointerException if the launch options are null.
     * @throws CouldNotStartEmbeddedBrokerException if the broker configuration could not be found.
     */

    private EmbeddedBroker( Map<String, Object> options )
    {
        Objects.requireNonNull( options );

        this.launchOptions = Collections.unmodifiableMap( options );

        this.listener = new PortExtractingLauncherListener();

        this.systemLauncher = new SystemLauncher( listener );
    }

    /**
     * Listener that extracts port information on broker startup, allowing for dynamic port assignment by the broker to
     * be respected by the application.
     * 
     * Hint provided here: 
     * 
     * @author james.brown@hydrosolved.com
     */

    private static class PortExtractingLauncherListener implements SystemLauncherListener
    {
        private SystemConfig<?> systemConfig;

        private Map<String, Integer> ports;

        @Override
        public void beforeStartup()
        {
            // Not needed
        }

        @Override
        public void errorOnStartup( final RuntimeException e )
        {
            // Not needed
        }

        @Override
        public void afterStartup()
        {
            if ( this.systemConfig == null )
            {
                throw new IllegalStateException( "System config is required" );
            }

            Broker<?> broker = (Broker<?>) this.systemConfig.getContainer();

            this.ports = broker.getChildren( Port.class )
                               .stream()
                               .collect( Collectors.toUnmodifiableMap( Port::getName,
                                                                       Port::getBoundPort ) );
        }

        @Override
        public void onContainerResolve( final SystemConfig<?> systemConfig )
        {
            this.systemConfig = systemConfig;
        }

        @Override
        public void onContainerClose( final SystemConfig<?> systemConfig )
        {
            // Not needed
        }

        @Override
        public void onShutdown( final int exitCode )
        {
            // Not needed
        }

        @Override
        public void exceptionOnShutdown( final Exception e )
        {
            // Not needed
        }
    }

}