import java.util.Scanner;

public class ex032
{
    public static void main (String [] args)
    {
        int n, i;
        Scanner input = new Scanner (System.in);
        
        System.out.println("Quer a tabuada de que numero?");
        n=input.nextInt();
        System.out.println("-------------------");
        System.out.printf("|  Tabuada dos %d  |\n", n);
        System.out.println("-------------------");
        for(i=0; i<=n; i++)
        {
                System.out.printf("| %d x %d = %d |\n", n, i, n*i);
        }
    }
}
