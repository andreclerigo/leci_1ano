import java.util.Scanner;

public class ex0113
{
	public static void main(String []args)
	{
	double xa,ya,xb,yb,escala;
	double distancia;
	Scanner ler=new Scanner(System.in);
	System.out.print("Qual a coordenada X da localidade A? ");
	xa=ler.nextDouble();
	System.out.print("Qual a coordenada Y da localidade A? ");
	ya=ler.nextDouble();
	System.out.print("Qual a coordenada X da localidade B? ");
	xb=ler.nextDouble();
	System.out.print("Qual a coordenada Y da localidade B? ");
	yb=ler.nextDouble();
	System.out.print("Qual a escala? ");
	escala=ler.nextDouble();
	distancia= Math.sqrt(Math.pow(xb-xa,2) + Math.pow(yb-ya,2))*escala;
	System.out.printf("A distancia entre dois pontos é %5.2f\n", distancia);
	}
}
