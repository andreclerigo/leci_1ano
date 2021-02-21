public class duvida
{   
    public static void main (String[] args)
    {
        double x;
        int y;
        
        x=3.0;
        y= (int) (x- x/2);
        System.out.print("y:");
        System.out.println( y );
        x+=0.5;
        System.out.printf("x:%3.1f", x);
    }
}
