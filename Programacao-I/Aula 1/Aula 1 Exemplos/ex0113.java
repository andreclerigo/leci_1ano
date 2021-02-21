import java.util.*;
public class ex0113 {
public static void main (String args[])  {		
		// Scanner para a leitura de dados
		Scanner sc = new Scanner(System.in);
		double xA, xB, yA, yB, scale; 	// Variaveis de entrada
		double distance; 		// Variavel de saida
		// Ler dados
		System.out.print("Coordenada X da localidade A: ");	xA = sc.nextDouble();
		System.out.print("Coordenada Y da localidade A: ");	yA = sc.nextDouble();
		System.out.print("Coordenada X da localidade B: ");	xB = sc.nextDouble();
		System.out.print("Coordenada Y da localidade B: ");	yB = sc.nextDouble();
		System.out.print("Escala: ");
		scale = sc.nextDouble();
		// Calcular dados
		distance = Math.sqrt(Math.pow(xA - xB, 2) + Math.pow(yA - yB, 2)) * scale;
		// Escrever resultados
		System.out.printf("Distância = %10.3f km\n", distance);
	}
}
