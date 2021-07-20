import static java.lang.System.*;
import java.util.*;

public class TestComplex {
  // Exemplo simples de utilização da class Complex
  public static void main(String[] args) {
	Scanner sc = new Scanner (System.in);
	double Re=0, Im=0;
	
	if (args.length == 0){
		System.out.print("RE: ");
		Re = sc.nextDouble();
		System.out.print("Im: ");
		Im = sc.nextDouble();
	}else if (args.length == 1){
		Re = Double.parseDouble(args[0]);
	}else {
		Re = Double.parseDouble(args[0]);
		Im = Double.parseDouble(args[1]);
	}
	
    Complex a = new Complex(Re, Im);

    // Vamos usar métodos do objeto a
    out.printf("(%.2f+%.2fi)\n", a.real(), a.imag());
    out.println("  parte real = " + a.real());
    out.println("  parte imaginaria = " + a.imag());
    out.println("  modulo = " + a.abs());
    out.printf("  argumento = %.2f\n", a.arg());
  }

}
