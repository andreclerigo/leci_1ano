import java.util.Scanner;

public class ex031
{
    public static void main (String [] args)
    {
        int cont;
        int i;
        Scanner input = new Scanner (System.in);
                
        do{
        System.out.println("Qual as vezes que quer escrever?");
        i = input.nextInt();
        for (cont=0; cont<=i; cont++)
        {
            System.out.println("P1 é fixe!");
        }
        }while (i>0);
        
        
    }
}
