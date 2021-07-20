import java.util.Scanner;

public class ex0211
{
	public static void main (String[] args)
	{
	double a, b, c;
	double xp, xn; 
	Scanner input = new Scanner (System.in);
	
	System.out.println("Numa expressao: Ax² + Bx + C");
	System.out.print("Qual o valor de A? ");
	a=input.nextDouble();
	System.out.print("Qual o valor de B? ");
	b=input.nextDouble();
	System.out.print("Qual o valor de C? ");
	c=input.nextDouble();
	
	xp = (-b +Math.sqrt((b*b*4*a*c)))/(2*a);
	xn = (-b -Math.sqrt((b*b*4*a*c)))/(2*a);
	
	System.out.printf("x =  "+xp+" ou x= "+xn);
	}
}
