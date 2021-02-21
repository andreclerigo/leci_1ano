import java.util.*;

public class aula01ex1{
	public static void main (String []args){
		double op1, op2, res;
		String operacao = new String();
		
		Scanner ler = new Scanner (System.in);
		op1 = ler.nextDouble();
		operacao = ler.next();
		op2 = ler.nextDouble();
		
		switch(operacao){
			case "+": res = op1 + op2;
			System.out.printf("%f \n", res);
				break;
			case "-": res = op1 - op2;
			System.out.printf("%f \n", res);
				break;
			case "*": res = op1 * op2;
			System.out.printf("%f \n", res);
				break;
			case "/": res = op1 / op2;
			System.out.printf("%f \n", res);
				break;
			default: System.out.println("System.err");
		}
	}
}
