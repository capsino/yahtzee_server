package yahtzee;

import static spark.Spark.get;
import java.util.HashMap;
import com.google.gson.Gson;

public class Service {

    public static void main(String[] args) {
        get("/", "application/json", (req, res) -> {
            HashMap<String,Object> result = new HashMap<String,Object>();
            int[] rolls = new int[]{};
            for(int i=0; i < 5; i++) {
            	rolls[i] = RandomDiceRoll.roll();
            }
            result.put( "roll", rolls );
            return new Gson().toJson(result);
        });
    }
}
