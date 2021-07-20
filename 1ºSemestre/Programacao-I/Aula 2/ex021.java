import java.util.Scanner;

public class ex021
{
	public static void main (String [] args)
	{
	Scanner ler = new Scanner (System.in);
	
	double nota, tpg1, tpg2, ei;
	
	System.out.printf("Qual a nota no teste PG1? ");
	tpg1 = ler.nextDouble();
	System.out.printf("Qual a nota no teste PG2? ");
	tpg2 = ler.nextDouble();
	System.out.printf("Qual a nota no teste EI? ");
	ei = ler.nextDouble();
	nota = 0.2*tpg1 + 0.3*tpg2 + 0.5*ei;
	
	if (nota<9.5)
		System.out.printf("A sua media é de %5.2f valores, está reprovado.", nota);
	else
		System.out.printf("A sua media é de %5.2f valores, está aprovado.", nota);
	}
}
