import java.util.Scanner;

public class ex029
{
	public static void main (String[] args)
	{
	double t, tconvertido;
	int unidade;  
	Scanner input = new Scanner (System.in);
	
	System.out.println("Qual a temperatura?");
	t=input.nextDouble();
	System.out.println("Qual a unidade que deseja converter? (0 - Celsius, 1 - Fahrenheit) ");
	unidade=input.nextInt();
	
	if(unidade==0){
	tconvertido = ((t-32)/1.8);
	System.out.printf("%5.2f ºFahrenheit é equivalente a %5.2f ºCelsius.", t, tconvertido);
	}
	if(unidade==1){
	tconvertido = ((1.8*t) + 32);
	System.out.printf("%5.2f ºCelsius é equivalente a %5.2f ºFahrenheit.", t, tconvertido);
	}
}
}
