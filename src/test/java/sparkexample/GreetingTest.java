package sparkexample;

import static junit.framework.Assert.*;
import org.junit.Test;

public class GreetingTest {

    @Test
    public void message_from_server_on_port_4567() {
        String actual = Greeting.message();
        String expected = "Hello from spark_server on port 4567";
        assertEquals(expected, actual);
    }

}
