import p2utils.Stack;
import java.util.*;

public class RPNCalculator{
	public static void main (String[] args) {
		Stack<Integer> Operandos = new Stack<>();
		Stack<Character> Operador = new Stack<>();
		
		Scanner scf = new Scanner(System.in);
		
		int error = 0;
		double num = 0;
		int cont = 0;
		String op = "";
		while(error != 1) {
			String input = scf.next();
			try{
				num = Double.parseDouble(input);
				cont++;
			}catch (NumberFormatException e){
				if (cont < 2){
					System.out.println("ERROR: two operands missing!");
					error = 1;
					System.exit(1);
				} else if (input.equals("+") || input.equals("-") || input.equals("*") || input.equals("/")){
					op = input;
					cont = cont - 2;
				} else {
					System.out.println("ERROR: Invalid Operand");
					error = 1;
					System.exit(1);
				}
			}
			System.out.println(num);
			System.out.println(op);
		}
		scf.close();
	}
}
