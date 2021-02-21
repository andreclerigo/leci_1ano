import java.util.*;
public class ex0111{
	public static void main (String args[])	{
		// Scanner para a leitura de dados
		Scanner sc = new Scanner(System.in);
		
		double USD; 	// dólares amiricanos
		double taxa; 	// Taxa de conversão
		
		// Ler dados
		System.out.print("Dólares amiricanos: ");
		USD = sc.nextDouble();
		
		System.out.print("Taxa de conversão: ");
		taxa = sc.nextDouble();
		
		// Calcular
		 System.out.printf("%5.2f dolares equivalente a %5.2f euros\n", USD,USD*taxa);
	}
}
