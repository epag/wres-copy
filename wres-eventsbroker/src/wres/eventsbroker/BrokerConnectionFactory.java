package wres.eventsbroker;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Properties;
import java.util.function.Supplier;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import wres.eventsbroker.embedded.CouldNotLoadBrokerConfigurationException;
import wres.eventsbroker.embedded.CouldNotStartEmbeddedBrokerException;
import wres.eventsbroker.embedded.EmbeddedBroker;

/**
 * <p>Manages connections to an AMQP broker. The broker configuration is contained in a jndi properties file on the 
 * classpath. If the configuration contains the loopback address (localhost, 127.0.0.1), then the factory creates an 
 * instance of an {@link EmbeddedBroker} unless a broker is already active on that address and port. Any embedded 
 * broker instance is managed by this class and must be closed when the application exits. For this reason, the class 
 * implements {@link Closeable} and it is recommended to instantiate using a try-with-resources. For example:
 * 
 * <pre>
 * {@code
 *     try( BrokerConnectionFactory factory = BrokerConnectionFactory.of() )
 *     {
 *         // Acquire connections
 *     }
 * }
 * </pre>
 * 
 * @author james.brown@hydrosolved.com
 */

public class BrokerConnectionFactory implements Closeable, Supplier<ConnectionFactory>
{

    private static final Logger LOGGER = LoggerFactory.getLogger( BrokerConnectionFactory.class );

    /**
     * Default jndi properties file on the classpath.
     */

    private static final String DEFAULT_PROPERTIES = "jndi.properties";

    /**
     * Instance of an embedded broker managed by this factory instance, created as needed. There should be one instance 
     * of a {@link BrokerConnectionFactory} with an embedded broker instance per application instance.
     */

    private final EmbeddedBroker broker;

    /**
     * Context that maps JMS objects to names.
     */

    private final Context context;

    /**
     * A connection factory.
     */

    private final ConnectionFactory connectionFactory;

    /**
     * Returns an instance of a factory, which is created using {@link DEFAULT_PROPERTIES}.
     * 
     * @return an instance
     * @throws CouldNotLoadBrokerConfigurationException if the broker configuration could not be found
     * @throws CouldNotStartEmbeddedBrokerException if an embedded broker was requested and could not be started
     */

    public static BrokerConnectionFactory of()
    {
        return new BrokerConnectionFactory( BrokerConnectionFactory.DEFAULT_PROPERTIES );
    }

    @Override
    public ConnectionFactory get()
    {
        return this.connectionFactory;
    }

    /**
     * Returns a destination from the present context.
     * 
     * @param name the destination name
     * @return the destination
     * @throws NamingException if the destination does not exist
     * @throws NullPointerException if the name is null
     */

    public Destination getDestination( String name ) throws NamingException
    {
        Objects.requireNonNull( name );

        return (Destination) this.context.lookup( name );
    }

    @Override
    public void close() throws IOException
    {
        if ( Objects.nonNull( this.broker ) )
        {
            this.broker.close();
        }
    }

    /**
     * Returns <code>true</code> if this factory is managing an embedded broker instance whose resources must be closed
     * on completion, otherwise <code>false</code>.
     * 
     * @return true if this factory is managing an embedded broker
     */

    public boolean hasEmbeddedBroker()
    {
        return Objects.nonNull( this.broker );
    }

    /**
     * Constructs a new instances and creates an embedded broker as necessary.
     * 
     * @param jndiProperties the name of a jndi properties file on the classpath
     * @throws CouldNotLoadBrokerConfigurationException if the broker configuration could not be found
     * @throws CouldNotStartEmbeddedBrokerException if an embedded broker was requested and could not be started
     * @throws NullPointerException if the jndiProperties is null
     */

    private BrokerConnectionFactory( String jndiProperties )
    {
        Objects.requireNonNull( jndiProperties );

        Properties properties = new Properties();

        // Load the jndi.properties
        URL config = BrokerConnectionFactory.class.getClassLoader().getResource( jndiProperties );
        try ( InputStream stream = config.openStream() )
        {
            properties.load( stream );

            LOGGER.debug( "Upon reading {}, discovered the following broker connection properties: {}",
                          jndiProperties,
                          properties );

            this.broker = this.createEmbeddedBrokerIfRequired( properties );
        }
        catch ( IOException | NamingException e )
        {
            throw new CouldNotLoadBrokerConfigurationException( "Unable to load the expected broker configuration from "
                                                                + "a jndi.properties file on the application classpath.",
                                                                e );
        }

        // Start the embedded broker if one exists
        // This may adjust the properties if the broker is bound to a dynamic port
        if ( Objects.nonNull( this.broker ) )
        {
            this.broker.start();

            Map.Entry<String, String> connection = this.getConnectionProperty( properties );

            // If the port was configured dynamically by the broker, override it here
            this.updateConnectionStringWithDynamicPortIfConfigured( connection.getKey(),
                                                                    connection.getValue(),
                                                                    properties,
                                                                    this.broker.getBoundPorts() );
        }

        // Set any variables that depend on the (possibly adjusted) properties
        try
        {
            this.context = new InitialContext( properties );
            this.connectionFactory = this.createConnectionFactory( properties );
        }
        catch ( NamingException e )
        {
            throw new CouldNotLoadBrokerConfigurationException( "Encountered an error on instantiating the broker.",
                                                                e );
        }
    }

    /**
     * Creates an instance of an embedded broker if required.
     * 
     * @param properties the broker configuration properties
     * @return an embedded broker or null
     * @throws NamingException if the jndi property could not be found
     * @throws CouldNotStartEmbeddedBrokerException if an embedded broker was requested and could not be started.
     */

    private EmbeddedBroker createEmbeddedBrokerIfRequired( Properties properties ) throws NamingException
    {
        EmbeddedBroker returnMe = null;

        String factoryName = null;
        ConnectionFactory factory = null;

        Map.Entry<String, String> connectionProperty = this.getConnectionProperty( properties );

        String key = connectionProperty.getKey();
        factoryName = key.replace( "connectionfactory.", "" );
        String value = connectionProperty.getValue();

        if ( value.contains( "localhost" ) || value.contains( "127.0.0.1" ) )
        {
            LOGGER.debug( "Discovered the connection property {} with value {}, which "
                          + "indicates that a broker should be listening on localhost.",
                          key,
                          value );

            Context localContext = new InitialContext( properties );
            factory = (ConnectionFactory) localContext.lookup( factoryName );

            // If retries are configured, then expect retries here, even if the connection ultimately fails
            LOGGER.debug( "Probing to establish whether an active broker is accepting connections at {}. This "
                          + "may fail!",
                          value );

            try ( Connection connection = factory.createConnection() )
            {
                LOGGER.info( "Discovered an active AMQP broker at {}", value );
            }
            catch ( JMSException e )
            {
                LOGGER.info( "Could not connect to an active AMQP broker at {}. Starting an embedded broker "
                             + "instead.",
                             value );

                returnMe = EmbeddedBroker.of();
            }
        }

        return returnMe;
    }

    /**
     * Returns the connection string from the map of properties.
     * 
     * @param properties the properties
     * @return the connection string
     * @throws CouldNotStartEmbeddedBrokerException if the property could not be found
     */

    private Map.Entry<String, String> getConnectionProperty( Properties properties )
    {
        Map.Entry<String, String> returnMe = null;

        for ( Entry<Object, Object> nextEntry : properties.entrySet() )
        {
            Object key = nextEntry.getKey();

            if ( Objects.nonNull( key ) && key.toString().contains( "connectionfactory" ) )
            {
                Object value = nextEntry.getValue();

                if ( Objects.nonNull( value ) )
                {
                    returnMe = new AbstractMap.SimpleEntry<>( key.toString(), value.toString() );
                }

                break;
            }
        }

        if ( Objects.isNull( returnMe ) )
        {
            throw new CouldNotStartEmbeddedBrokerException( "Could not locate a connection string in the properties "
                                                            + properties );
        }

        return returnMe;
    }

    /**
     * If the connection string contains the reserved TCP port of 0, then update the port inline to the properties 
     * map with the relevant AMQP port from the list of broker ports for which bindings were found. 
     * 
     * @param propertyName
     * @param propertyValue
     * @param properties
     */

    private void updateConnectionStringWithDynamicPortIfConfigured( String propertyName,
                                                                    String propertyValue,
                                                                    Properties properties,
                                                                    Map<String, Integer> ports )
    {
        if ( !ports.isEmpty()
             && ( propertyValue.contains( "localhost:0" ) || propertyValue.contains( "127.0.0.1:0" ) ) )
        {
            for ( Map.Entry<String, Integer> next : ports.entrySet() )
            {
                if ( next.getKey().contains( "AMQP" ) )
                {
                    Integer port = next.getValue();

                    String updated = propertyValue.replace( "localhost:0", "localhost:" + port )
                                                  .replace( "127.0.0.1:0", "127.0.0.1:" + port );

                    properties.setProperty( propertyName, updated );

                    LOGGER.debug( "The embedded broker was configured with a binding to TCP port 0 for AMQP traffic "
                                  + "but is actually bound to TCP port {}. Updated the configured TCP port to reflect "
                                  + "the bound port. The configured property is {}={}. The updated property is "
                                  + "{}={}.",
                                  port,
                                  propertyName,
                                  propertyValue,
                                  propertyName,
                                  updated );
                }
            }
        }
    }

    /**
     * Creates a connection factory.
     * 
     * @param properties the broker configuration properties.
     * @return a connection factory
     * @throws NamingException if the jndi property could not be found
     */

    private ConnectionFactory createConnectionFactory( Properties properties ) throws NamingException
    {
        String factoryName = null;

        for ( Object nextKey : properties.keySet() )
        {
            if ( Objects.nonNull( nextKey ) && nextKey.toString().contains( "connectionfactory" ) )
            {
                factoryName = nextKey.toString().replace( "connectionfactory.", "" );
            }
        }

        return (ConnectionFactory) this.context.lookup( factoryName );
    }
}