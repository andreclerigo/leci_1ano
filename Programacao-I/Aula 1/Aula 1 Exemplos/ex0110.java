import java.util.*;
public class ex0110{
	public static void main (String args[]) {
		// Scanner para a leitura de dados do teclado
		Scanner sc = new Scanner(System.in);
		
		double tempCelsius; 		// Variavel de entrada
		double tempFahrenheit; 	// Variavel de saida
		
		// Ler dados
		System.out.print("Temperatura(em graus Celsius): ");
		tempCelsius = sc.nextDouble();
		
		// Calcular
		tempFahrenheit = 1.8 * tempCelsius + 32;
		
		// Escrever resultados
		System.out.printf("%.2f Celsius e equivalente a %.2f Fahrenheit\n", 
			tempCelsius, tempFahrenheit);
	}
}
