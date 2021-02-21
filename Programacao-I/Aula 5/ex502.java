import java.util.*;

public class ex502{
    static Scanner input= new Scanner(System.in);
       public static void main (String [] args){
        int n;
        
        n = input.nextInt();
        System.out.println(""+f(n));
    }
    public static double f(double n){
        double nFormula;
        nFormula= (1/ (1+Math.pow(n,2)));
        return nFormula;
        }
}
