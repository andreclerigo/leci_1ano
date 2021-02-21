import java.util.Scanner;

public class ex0110
{
	public static void main(String[]args)
	{
	double celsius, fahrenheit;
	Scanner sc = new Scanner(System.in);
	
	System.out.printf ("Qual a temperatura em graus?");
	celsius=sc.nextDouble();
	fahrenheit=1.8*celsius+32;
	System.out.printf("%4.1f ºCelsius é equivalente a %4.1f ºFarenheit\n", celsius, fahrenheit);
	
  }
}
		
