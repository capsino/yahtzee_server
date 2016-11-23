package yahtzee;

import static org.junit.Assert.*;

import java.util.ArrayList;
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
	
	@Test
	public void roll_returns_every_number_between_1_and_6_inclusive() {
		
		ArrayList<Integer> outputs = new ArrayList<Integer>(1000);
		for(int i=0; i<1000; i++) {
			outputs.add(RandomDiceRoll.roll());
		}
		assertTrue(outputs.contains(1));
		assertTrue(outputs.contains(2));
		assertTrue(outputs.contains(3));
		assertTrue(outputs.contains(4));
		assertTrue(outputs.contains(5));
		assertTrue(outputs.contains(6));
	}

}
