import java.util.Scanner;

public class ex0111
{
	public static void main (String []args)
	{
	double dolares, conversao, euros;
	Scanner sc = new Scanner (System.in);
	
	System.out.printf("Qual a quantia em dolares americanos? ");
	dolares = sc.nextDouble();
	System.out.printf("Qual a taxa de conversao em percentagem? ");
	conversao = sc.nextDouble();
	euros = dolares * (conversao/100);
	System.out.printf("%4.1f dolares equivale a %4.1f euros.", dolares, euros);
	}
}
