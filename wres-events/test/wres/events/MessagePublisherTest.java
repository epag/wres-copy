package wres.events;

import static org.junit.Assert.assertEquals;

import java.io.IOException;
import java.nio.ByteBuffer;

import javax.jms.BytesMessage;
import javax.jms.Connection;
import javax.jms.JMSException;
import javax.jms.MessageConsumer;
import javax.jms.Session;
import javax.naming.NamingException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import wres.eventsbroker.BrokerConnectionFactory;

/**
 * Tests the {@link MessagePublisher}
 * 
 * @author james.brown@hydrosolved.com
 */

public class MessagePublisherTest
{

    /**
     * Connection factory.
     */

    private static BrokerConnectionFactory connections = null;

    @BeforeClass
    public static void runBeforeAllTests()
    {
        MessagePublisherTest.connections = BrokerConnectionFactory.of();
    }

    @Test
    public void publishOneMessage()
            throws IOException, NamingException, JMSException, InterruptedException
    {
        // Create and start a broker and open an evaluation, closing on completion
        try ( MessagePublisher publisher = MessagePublisher.of( MessagePublisherTest.connections.get(),
                                                                MessagePublisherTest.connections.getDestination( "status" ) );
              Connection connection = MessagePublisherTest.connections.get().createConnection();
              Session session = connection.createSession( false, Session.AUTO_ACKNOWLEDGE );
              MessageConsumer consumer = session.createConsumer( connections.getDestination( "status" ) ) )
        {
            connection.start();

            publisher.publish( ByteBuffer.wrap( "some bytes".getBytes() ),
                               "ID:someId",
                               "someCorrelationId",
                               "aGroupId" );

            // Blocking wait
            BytesMessage received = (BytesMessage) consumer.receive();

            // Create the byte array to hold the message
            int messageLength = (int) received.getBodyLength();
            byte[] messageContainer = new byte[messageLength];
            received.readBytes( messageContainer );
            String body = new String( messageContainer );

            assertEquals( "some bytes", body );
        }
    }

    @AfterClass
    public static void runAfterAllTests() throws IOException
    {
        MessagePublisherTest.connections.close();
    }

}