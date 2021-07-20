import java.util.Scanner;

public class ex039{

	public static void main(String [] args)
	{
		int n, x=2, soma=0;
		
		Scanner input = new Scanner (System.in);
		
		do{
			System.out.println("Insira um numero <=1000");
			n= input.nextInt();
			if(n>1000){
				System.out.println("O numero introduzido é maior que mil,");
		}
			if(n<0){
				System.out.println("O numero introduzido é negativo.");
		}
		}while(n>1000 || n<0);
		
		do{
			if(x%2 == 0){
				System.out.printf("%d ",x);
				soma = soma +x;
				x++;
			}
			else{
				x++;
				continue;
			}
			
		}while(x<=n);	
	}
}
