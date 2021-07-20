import java.util.*;

public class ex501{
    static Scanner input= new Scanner(System.in);
       public static void main (String [] args){
        double n;
        
        n=input.nextDouble();
        System.out.println(""+sqrt(n));
    }
    public static double sqrt(double n){
        double nsqrt;
        nsqrt=Math.sqrt(n);
        return nsqrt;
        }
}
