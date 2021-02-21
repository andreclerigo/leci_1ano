import java.util.*;

public class ex062{
	static Scanner input = new Scanner (System.in);
	public static void main (String args[]){
		int n_contagem, i=0, j=0;
		int[] vetor= new int[100];
		
		System.out.print("Qual o nummero que deseja contar? ");
		n_contagem = input.nextInt();
		
		System.out.println("Introduza os valores");
		do{
			vetor[i]= input.nextInt();
			if (vetor[i]<0)
				break;
				
			if(vetor[i]==n_contagem)
				j++;
			i++;
		}while(i<100 );
		System.out.printf("O valor %d foi introduzido %d vezes.", n_contagem, j);
	}
}
