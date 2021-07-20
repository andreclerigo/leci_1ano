import java-util.*

public class ex0117
{
	public static void main (String [] args)
	{
	double desconto, iva, valorp, prod;
	double total;
	
	Scanner ler = new Scanner (System.in);
	
	System.out.print("Qual o numero de produtos?" );
	prod = ler.nextDouble();
	System.out.print("Qual a taxa de IVA? (%)" );
	iva = (ler.nextDouble() / 100);
	System.out.print("Qual o desconto oferecido? (%)" );
	deconto = (ler.nextDouble() / 100);
	}
}
