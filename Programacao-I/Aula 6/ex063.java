import java.util.*;

public class ex063{
	static Scanner input = new Scanner (System.in);
	public static void main (String args[]){
		int menu_sel;
		int[] vetor= new int[50];
		
		do{
			//do{
			System.out.print("\n1 - Ler a sequência \n2 - Escrever a sequência \n3 - Calcular o máximo da sequência \n4 - Calcular o mínimo da sequência \n5 - Calcular a média da sequência \n6 - Detetar se é uma sequência só constituída por números pares \n10 - Terminar o programa \nOpção --> ");
			menu_sel = input.nextInt();
			//}while(menu_sel<0 || menu_sel>6);
		
			switch(menu_sel){
				case 1: menu1(vetor); break;
				case 2: menu2(vetor); break;
				case 3: System.out.printf("O valor máximo é: %d \n",menu3(vetor)); break;
				case 4: System.out.printf("O valor minimo é: %d \n",menu4(vetor)); break;
				case 5: System.out.printf("A média é: %.2f \n",menu5(vetor)); break;
				case 6: menu6(vetor); break;
				case 10: break;
			}
		}while(menu_sel>0 && menu_sel<6);
	}
	
	public static void menu1 (int vetor[]){
		int i=0;
		
		System.out.println("Introduza os 50 valores");
		do{
			vetor[i]= input.nextInt();
			
			if(vetor[i]==0) break;
			
			i++;
		}while(i<50);
	}
	
	public static void menu2 (int vetor[]){
		int i=49; 
		do{
			if(vetor[i]==0)
				continue;
			vetor[i]= input.nextInt();
			i--;
		}while(i>0);
	}
	
	public static int menu3 (int vetor[]){
		int valor_max = vetor[0];
		int i=0; 
		do{
			if(vetor[i]>valor_max)
				valor_max = vetor[i];
			if(vetor[i]==0)
				break;
			i++;
		}while(i<50);
		return valor_max;
	}
	
	public static int menu4 (int vetor[]){
		int valor_min = vetor[0];
		int i=0; 
		do{
			if(vetor[i]<valor_min)
				valor_min = vetor[i];
			if(vetor[i]==0)
				break;
			i++;
		}while(i<50);
		return valor_min;
	}
	
	public static double menu5 (int vetor[]){
		int soma=0, i=0;
		double media;
		
		do{
			soma = soma + vetor[i];
			
			if (vetor[i]==0) break;
			i++;
		}while(i<50);
		media = (double) soma/ (i);
		return media;
	}
	
	public static void menu6 (int vetor[]){
		int soma=0, i=0;
		double media;
		
		do{
			if(vetor[i]%2 ==0){
				continue;
			}
			else{
				System.out.println("Sequencia contem números ímpares.");
				break;
			}
		}while(i<50);
		System.out.println("A sequencia apenas contem numeros pares.");
	}
}
