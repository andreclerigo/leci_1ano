import java.util.*;

public class ex064{
	static Scanner input = new Scanner (System.in);
	public static void main (String args[]){
		int numero_notas, i;
		int notas[] = new int [50];
		do{
			System.out.print("Qual o numero de notas que vai introduzir? ");
			numero_notas = input.nextInt();
		}while(numero_notas < 0);
		
		for(i=0; i<numero_notas-1; i++){
			notas[i] = input.nextInt();
		}
	}
}
