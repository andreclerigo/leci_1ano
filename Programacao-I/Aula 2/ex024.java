import java.util.Scanner;

public class ex024
{
	public static void main (String[] args)
	{
		int mes, ano, divisao;   
		Scanner input = new Scanner (System.in);
	
		System.out.print("Qual o ano? ");
		ano = input.nextInt();
		System.out.print("Qual o mes? ");
		mes = input.nextInt();
	
		Switch (mes){
			case 1:
				System.out.printf("O mes de Janeiro de %4f tem 31 dias.", ano);
				break;
			case 2:
				if (ano%4==0)&&!(ano%100==0) ||
				else System.out.printf("O mes de Fevereiro de %4f tem 28 dias.");
				break;
			case 3:
				System.out.printf("O mes de Março de %4f tem 31 dias.");
				break;
			case 4:
				System.out.printf("O mes de Abril de %4f tem 30 dias.");
				break;
			case 5:
				System.out.printf("O mes de Maio de %4f tem 31 dias.");
				break;
			case 6:
				System.out.printf("O mes de Junho de %4f tem 30 dias.");
				break;
			case 7:
				System.out.printf("O mes de Julho de %4f tem 31 dias.");
				break;
			case 8;
				System.out.printf("O mes de Agosto de %4f tem 31 dias.");
				break;
			case 9:
				System.out.printf("O mes de Setembro de %4f tem 30 dias.");
				break;
			case 10:
				System.out.printf("O mes de Outubro de %4f tem 31 dias.");
				break;
			case 11:
				System.out.printf("O mes de Novembro de %4f tem 30 dias.");
				break;
			case 12:
				System.out.printf("O mes de Dezembro de %4f tem 31 dias.");
				break;
		}
	}
}
