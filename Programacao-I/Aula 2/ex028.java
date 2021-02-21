import java.util.Scanner;

public class ex028
{
	public static void main (String[] args)
	{
	int x, y, z;  
	Scanner input = new Scanner (System.in);
	
	System.out.print("Qual o valor de X? ");
	x=input.nextInt();
	System.out.print("Qual o valor de Y? ");
	y=input.nextInt();
	System.out.print("Qual o valor de Z? ");
	z=input.nextInt();
	
	if ((x>y) && (x>z) && (y<z))
		System.out.print("y < z < x");
	else if ((x>y) && (x>z) && (z<y))
		System.out.print("z < y < x");
	else if ((y>x) && (y>z) && (x<z))
		System.out.print("x < z < y");
	else if ((y>x) && (y>z) && (z<x))
		System.out.print("z < x < y");
	else if ((z>x) && (z>y) && (x<y))
		System.out.print("x < y < z");
	else if ((z>x) && (z>y) && (y<x))
		System.out.print("y < x < z");
	}
}
