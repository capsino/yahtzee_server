package sparkexample;

import org.apache.http.client.methods.HttpGet;

public class Greeting {

    public static String message() {

        HttpGet httpget = new HttpGet("http://httpbin.org/");

        return "Hello from http://sparkjava.com";
    }
}
