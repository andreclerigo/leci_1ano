import java.util.*;

public class aula01ex6{
	public static void main (String [] args){
		int n, escolha, i=0;
		Scanner read = new Scanner (System.in);
		
		System.out.println("Adivinha o número!");
		n = (int)(Math.random()*(100+1));
		
		do{
			escolha = read.nextInt();
			if (escolha < n){
				System.out.println(">");
			}else if (escolha > n){
				System.out.println("<");
			}else{
				System.out.println("=");
			}
			i++;
		}while(escolha != n);
		
		System.out.printf("Score: %d", i);
	}
}
