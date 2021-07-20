import java.util.Scanner;

public class ex026
{
	public static void main (String[] args)
	{
	int x;  
	Scanner input = new Scanner (System.in);
	
	System.out.print("Qual o valor de X? ");
	x=input.nextInt();
	
	if (x%2==0)
		System.out.print("O numero é par.");
	else
		System.out.print("O numero é impar.");
	}
}
