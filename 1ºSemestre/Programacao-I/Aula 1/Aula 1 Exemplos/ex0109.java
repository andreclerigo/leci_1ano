import java.util.*;
public class ex0109	{ 
 public static void main (String args[]) 	{
  // Scanner para leitura de dados
  Scanner sc = new Scanner(System.in);
  
  double ladoA, ladoB; 	// Variaveis de entrada
  
  // Ler dados
  System.out.print("Lado A: ");
  ladoA = sc.nextDouble();
  System.out.print("Lado B: ");
  ladoB = sc.nextDouble();
  
  // Escrever resultados
  System.out.printf("Perimetro = %10.2f\n", (ladoA + ladoB) * 2);
  System.out.printf("Area      = %10.2f\n", ladoA * ladoB);
 	}
}
