package yahtzee;

import java.util.Random;

public class RandomDiceRoll {

	public static int roll() {
		
		Random r = new Random();
		int Low = 1;
		int High = 6;
		return r.nextInt(High - Low + Low) + Low;
	}
}
