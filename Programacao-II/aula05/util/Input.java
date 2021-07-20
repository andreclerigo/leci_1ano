package util;

import static java.lang.System.*;
import java.util.*;
import java.io.*;

/** This class contains methods for robust interactive input. */
public class Input {
  private static Scanner input = new Scanner(System.in);

  /** Get a double value from a line read from standard input.
   * Should repeat until a valid double value is actually read.
   * @param prompt the message to prompt for input.
   * @return the value read from input.
   */
  public static double getDouble(String prompt) {
	boolean erros = true;
    double r = 0;
    do{
		err.print(prompt);
    
		erros = true;
		try{
			String line = input.nextLine();
			r = Double.parseDouble(line.trim());
			erros = false;
		} catch (NumberFormatException erro){
			System.out.println("Invalid input format!");
		}
    } while (erros);
    return r;
  }

  /** Get a double value within a given range, from standard input.
   * Should repeat until a valid double value is actually read.
   *
   * @param prompt the message to prompt for input.
   * @param min minimum value allowed.
   * @param max maximum value allowed.
   * Precondition: min<=max
   * @return the value read from input.
   * Postcondition: result in in [min, max].
   */
  public static double getDouble(String prompt, double min, double max) {
    // Add an assertion to test the precondition...
    assert min <= max : "Precondition";
    double r = 0;
    while (true) {
      err.print(prompt);
      String line = input.nextLine();
      r = Double.parseDouble(line.trim());
      if (min <= r && r <= max) break;
      err.printf("Value must be in range [%f, %f]\n", min, max);
    }
    assert min <= r && r <= max : "Postcondition";
    return r;
  }

}
