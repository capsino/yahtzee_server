package yahtzee;

import static org.junit.Assert.*;

import org.junit.Test;

public class RandomDiceRollTest {

	@Test
	public void roll_returns_number_between_1_and_6() {
		int output;
		for(int i=0; i<1000; i++){
			output = RandomDiceRoll.roll();
			assertTrue(output <= 6 && output >= 1);
		}
	}

}
