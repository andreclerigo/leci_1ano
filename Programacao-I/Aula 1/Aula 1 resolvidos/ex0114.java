import java.util.*;

public class ex0114
{
	public  static void main(String []args)
	{
	double catetoa, catetob;
	double hipotenusa, angulo;
	Scanner ler = new Scanner (System.in);
	
	System.out.print("Qual o valor do cateto A?" );
	catetoa=ler.nextDouble();
	System.out.print("Qual o valor do cateto B? ");
	catetob=ler.nextDouble();
	hipotenusa=Math.sqrt(Math.pow(catetoa,2) + Math.pow(catetob,2));
	angulo = Math.toDegrees(Math.acos(catetoa/hipotenusa));
	System.out.printf("O valor da hipotenusa é %5.2f e o angulo entre o lado A e a hipotenusa é de %5.2f º.", hipotenusa, angulo);
	6}
}
