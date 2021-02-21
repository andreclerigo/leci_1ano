import java.util.Scanner;

public class ex022
{
	public static void main (String [] args)
	{
	double x, y;
	
	Scanner ler = new Scanner (System.in);
	
	System.out.print("Qual o valor de X? ");
	x=ler.nextDouble();
	System.out.print("Qual o valor de Y? ");
	y=ler.nextDouble();
	
	if (x<y) System.out.print("O valor X é menor que Y.");
	if (x>y) System.out.print("O valor X é maior que Y.");
	if (x==y) System.out.print("O valor X é igual a Y.");
	}
}
