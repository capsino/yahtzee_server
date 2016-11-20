package sparkexample;

import org.apache.http.client.methods.HttpGet;
import com.google.gson.JsonParser;

public class Greeting {

    public static String message() {

        HttpGet httpget = new HttpGet("http://httpbin.org/");
        JsonParser jsonParser = new JsonParser();

        return "Hello from http://sparkjava.com";
    }
}
