import java.util.Scanner;

public class ex037
{
    public static void main (String [] args){
	int i, j;
        int largura, altura;
        
        Scanner input = new Scanner (System.in);
        
        do{
        System.out.println("Qual a largura do retangulo?");
        largura= input.nextInt();
        System.out.println("Qual a altura do retangulo?");
        altura= input.nextInt();
		}while(largura<0 || altura<0);
        
		for (i=1; i<=altura; i++)
		{
			for(j=1; j<=largura;j++)
			{
				if(i==1 || i==altura){
					System.out.print("*");
					continue;
				}
				if(j==1 || j==largura){
				System.out.print("*");
				}else{
				System.out.print(" ");
				continue;
				}
			}
			System.out.println("");
		}
	}
}


