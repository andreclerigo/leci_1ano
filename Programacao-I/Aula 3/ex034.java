import java.util.Scanner;

public class ex034
{
    public static void main (String [] args)
    {
        int i, cont;
        double res=1;
        
        Scanner input = new Scanner (System.in);
        i=input.nextInt();
        
        for(cont=0; cont<=i; cont++)
        {
                res = res *((Math.pow(-1, cont))/ (2*cont +1));
                System.out.printf("%.15f + ", res);
                
        }
    }
}
