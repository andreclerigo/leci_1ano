import java.util.Scanner;

public class ex033
{
    public static void main (String [] args)
    {
        int n, i, cont;
        int res;
        Scanner input = new Scanner (System.in);
        
        do{
        System.out.println("Fatorial de que numero? (<10)");
        n=input.nextInt();
        }while(n<0 && n>10);

        for(i=1; i<=n; i++)
        {
                res=1;
                for(cont=0; cont<i; cont++)
                {     
                res= res* (i-cont);
                }
        System.out.printf("%d ! = %d\n", i, res);
        }
    }
}
