package sparkexample;

import static junit.framework.Assert.*;
import org.junit.Test;

public class GreetingTest {

  @Test
  public void message_contains_spark_url() {
    String actual = Greeting.message();
    String url = "http://sparkjava.com";
    assertTrue(actual.contains(url));
  }

}
