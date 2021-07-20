import java.util.*;
public class ex0114	{	
	public static void main (String args[]) 	{
		// Scanner para leitura de dados
		Scanner sc = new Scanner(System.in);
		double catetoA, catetoB; 		// Variaveis de entrada
		double hipotenusa, angulo; 		// Variaveis de saida
		// Ler dados
		System.out.print("Cateto A: ");
		catetoA = sc.nextDouble();
		System.out.print("Cateto B: ");
		catetoB = sc.nextDouble();
		// Calcular
		hipotenusa = Math.sqrt(Math.pow(catetoA, 2) + Math.pow(catetoB, 2));
		angulo = Math.toDegrees(Math.acos(catetoA/hipotenusa));
		// Escrever resultados
		System.out.printf("Hipotenusa = %10.2f\n", hipotenusa);
		System.out.printf("Angulo     = %10.2f\n", angulo);
	}
}
