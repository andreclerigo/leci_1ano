import java.util.*;
public class ex0115	{	
	public static void main (String args[])	{
		// Scanner para a leitura de dados
		Scanner sc = new Scanner(System.in);
		double tp1, tp2, api, ep; 	// Variaveis de entrada
		double Final; 		// Variavel de saida
		// Ler dados
		System.out.print("TP1: ");	tp1 = sc.nextDouble();
		System.out.print("TP2: ");	tp2 = sc.nextDouble();
		System.out.print("API: ");	api = sc.nextDouble();
		System.out.print("EP: ");	ep = sc.nextDouble();
		// Calcular
		Final = (tp1 * 0.15) + (tp2 * 0.15) + (api * 0.30) + (ep * 0.40);
		// Escrever os resultados
		System.out.println("==============================\n");
		System.out.printf(	"TP1        = %3.1f\n\n" +
				"TP2        = %3.1f\n\n" +
				"API        = %3.1f\n\n" +
				"EP         = %3.1f\n\n" +
				"Nota Final = %3.1f\n\n", tp1, tp2, api, ep, Final);
	}
}
