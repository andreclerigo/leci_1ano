import java.util.Scanner;

public class ex0116
{
	public static void main (String []args)
	{
		double despesa_media, d1;
		
		Scanner ler = new Scanner (System.in);
		
		System.out.printf("Quanto gastou no primeiro dia?" );
		d1=ler.nextDouble();
		despesa_media = (d1 + d1*1.20 + d1*Math.pow(1.2, 2) + d1*Math.pow(1.20, 3))/4;
		
		System.out.printf("A despesa media foi de %8.2f euros.", despesa_media);
	}
}
