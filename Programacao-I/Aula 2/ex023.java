import java.util.Scanner;

public class ex023
{
	public static void main (String[] args)
	{
	int idade;   
	Scanner input = new Scanner (System.in);
	
	System.out.print("Qual a sua idade? ");
	idade = input.nextInt();
	
	if (idade<6) System.out.print("Isento de pagamento.");
	else if (idade<12) System.out.print("Bilhete de criança.");
	else if (idade<=65) System.out.print("Bilhete normal.");
	else System.out.print("Bilhete de 3ª idade.");
	}
}
