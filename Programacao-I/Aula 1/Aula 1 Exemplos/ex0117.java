import java.util.*;

public class ex0117
{	
	public static void main (String args[])
	{
		// Scanner para a leitura de dados
		Scanner sc = new Scanner(System.in);
		
		double Valor; 	
		double Desconto = 5;
		double IVA = 21 ; 
		
		// Ler dados
		System.out.print("Valor do produto: ");
		Valor = sc.nextDouble();
		
		// Escrever os resultados
		System.out.printf("Total = %f\n", Valor - (Valor/100)*Desconto + (Valor/100)*IVA);
	}
}
