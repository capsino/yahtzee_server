package sparkexample;

import static spark.Spark.get;

public class Service {

    public static void main(String[] args) {
        get("/", (req, res) -> {
            return Greeting.message();
        });
    }
}
