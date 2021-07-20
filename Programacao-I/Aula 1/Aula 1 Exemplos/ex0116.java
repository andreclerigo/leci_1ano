import java.util.*;

public class ex0116
{	
	public static void main (String args[])
	{
		// Scanner para a leitura de dados
		Scanner sc = new Scanner(System.in);
		
		double Dia1; 	
		double Despesa; 
		
		// Ler dados
		System.out.print("Dia1: ");
		Dia1 = sc.nextDouble();
		
		Despesa = Dia1 + Dia1*1.2 + Dia1*1.2*1.2 + Dia1*1.2*1.2*1.2;
		
		// Escrever os resultados
		System.out.printf("Despesa media = %f\n", Despesa/4);
	}
}

