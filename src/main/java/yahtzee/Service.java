package yahtzee;

import static spark.Spark.get;
import java.util.HashMap;
import com.google.gson.Gson;

public class Service {

    public static void main(String[] args) {
        get("/", "application/json", (req, res) -> {
            HashMap<String,Object> result = new HashMap<String,Object>();
           result.put( "roll", RandomDiceRoll.roll() );
            return new Gson().toJson(result);
        });
    }
}
