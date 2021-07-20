import java.util.*;

public class ex0115
{
	public static void main (String []args)
	{
	Scanner ler = new Scanner(System.in);
	double tp1,tp2,ap1,ep1,res;

	System.out.print("Qual a nota no teste TP1? ");
	tp1=ler.nextDouble();
	System.out.print("Qual a nota no teste TP2? ");
	tp2=ler.nextDouble();
	System.out.print("Qual a nota no teste AP1? ");
	ap1=ler.nextDouble();
	System.out.print("Qual a nota no teste EP1? ");
	ep1=ler.nextDouble();
	res= (tp1*0.15) +(tp2*0.15)+(ap1*0.30)+(ep1*0.40);
	System.out.printf("A nota final é %5.2f\n", res);
	}
}
	
