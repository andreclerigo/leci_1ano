import java.util.Scanner;

public class ex036
{
    public static void main (String [] args)
    {
        int i, j;
        int largura, altura;
        
        Scanner input = new Scanner (System.in);
        
        do{
        System.out.println("Qual a largura do retangulo?");
        largura= input.nextInt();
        System.out.println("Qual a altura do retangulo?");
        altura= input.nextInt();
		}while(largura<0 || altura<0);
        
		for (i=0; i<altura; i++)
		{
			for(j=0; j<largura; j++)
			{
				System.out.print("*");
			}
			System.out.println("");
		}
    }
}
