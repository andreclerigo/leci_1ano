import java.util.*;

public class ex061{
	static Scanner input = new Scanner (System.in);
	public static void main (String args[]){
		int n, i , j;
		int vetor[];
		
		System.out.println("Qual o numero de dados introduzidos?");
		n = input.nextInt();
		vetor = new int[n];
		
		for (i=0; i<n; i++){
			System.out.print("Introduza o valor: ");
			vetor[i]= input.nextInt();
		}
		
		for (j=n-1; j>=0; j--){
			System.out.printf("%d", vetor[j]);
		}
	}
}
		
