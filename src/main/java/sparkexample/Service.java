package sparkexample;

import static spark.Spark.get;

public class Service {

    public static void main(String[] args) {
        get("/", "application/json", (req, res) -> {
            return "{" + quoted("message") + ":" + quoted(Greeting.message()) + "}";
        });
    }

    private static String quoted(String s) {
      return "\"" + s + "\"";
    }
}
