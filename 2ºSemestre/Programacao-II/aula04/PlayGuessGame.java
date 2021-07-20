import static java.lang.System.*;
import java.util.Scanner;

public class PlayGuessGame {
  private static final Scanner scin = new Scanner(System.in);

  public static void help(GuessGame game) {
    assert game != null;
    out.printf("Find the secret number in range [%d,%d]!\n",
                game.min(), game.max());
    out.printf("Available commands:\n");
    out.printf("  <number>   (new attempt to guess secret)\n");
    out.printf("  count      (show current number of attempts)\n");
    //out.printf("  show       (show all attempts done)\n");
    out.printf("  help       (information on command usage)\n");
    out.printf("  quit       (exits the program)\n");
  }

  public static void main(String[] args) {
	int numero = 0;
    if (args.length != 0 && args.length != 2) {
      out.println("Usage: PlayGuessGame [ <min> <max> ]");
      out.println("(by default range [0,20] is used)");
      exit(1);
    }
    int min = 0;
    int max = 20;
    if (args.length == 2) {
      // parse arguments...
      numero = Integer.parseInt(args[0]);
    }
    GuessGame game = new GuessGame(min, max);
    assert !game.finished();

    out.println();
    help(game);
    out.println();
    while (!game.finished()) {
      out.print("Command? ");
      String command = scin.next();
      numero = Integer.parseInt(command.trim());
      out.println();
      switch (command) {
      case "quit":
        exit(1);
        break;
      case "help":
        help(game);
        break;
      case "count":
        System.out.println(game.numAttempts());
        break;
      default:
		game.play(numero);
		if (!game.validAttempt(numero)){
			System.out.println("ERROR: " + numero + " is invalid");
			System.out.println();
			continue;
		}
		if (game.finished()) continue;
        if (game.attemptIsHigher()){
			System.out.println(numero + " is too high");
		} else if (game.attemptIsLower()){
			System.out.println(numero + " is too low");
		}
        break;
      }
      out.println();
    }
    out.printf("Game finished in %d attempts\n", game.numAttempts());
  }
}

