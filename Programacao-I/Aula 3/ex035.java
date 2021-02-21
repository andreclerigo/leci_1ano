import java.util.Scanner;

public class ex035
{
    public static void main (String [] args)
    {
        int a=3, b=4, cinteiro;
        double c;
        
        c = Math.sqrt(Math.pow(a,2) + Math.pow(b,2));
        cinteiro = (int)c;
        do
        {
			System.out.printf("%d %d %.0f\n", a, b, c);
              a++;
              b++;
        }while(cinteiro==c);
    }
}

