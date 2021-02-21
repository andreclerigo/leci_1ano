import java.util.Scanner;

public class ex027
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
	
	if ((x>y) && (x>z))
		System.out.print("O maior valor é X.");
	else if ((y>x) && (y>z))
		System.out.print("O maior valor é Y.");
	else if ((z>x) && (z>y))
		System.out.print("O maior valor é Z.");
	else System.out.print("Foram introduzidos valores iguais.");
	}
}
