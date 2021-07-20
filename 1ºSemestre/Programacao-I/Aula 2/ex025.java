import java.util.Scanner;

public class ex025
{
	public static void main (String[] args)
	{
	int xP1, yP1, xP2, yP2, xP3, yP3, xP4, yP4;   
	Scanner input = new Scanner (System.in);
	
	System.out.print("Qual a coordenada X do P1? ");
	xP1= input.nextInt();
	System.out.print("Qual a coordenada Y do P1? ");
	yP1= input.nextInt();
	
	System.out.print("Qual a coordenada X do P2? ");
	xP2= input.nextInt();
	System.out.print("Qual a coordenada Y do P2? ");
	yP2= input.nextInt();
	
	System.out.print("Qual a coordenada X do P3? ");
	xP3= input.nextInt();
	System.out.print("Qual a coordenada Y do P3? ");
	yP3= input.nextInt();
	
	System.out.print("Qual a coordenada X do P4? ");
	xP4= input.nextInt();
	System.out.print("Qual a coordenada Y do P4? ");
	yP4= input.nextInt();
	
	if ((xP1==xP4) && (xP2==xP3) && (yP1==yP2) && (yP4==yP3))
		System.out.print("Os pontos formam uma figura geométrica com a forma de um quadrado.");
	else
		System.out.print("Os pontos nao formam um quadrado.");
	/*OU
	 * 
	 *int P1[] = new int [1];
	 *int P2[] = new int [1];
	 *int P3[] = new int [1];
	 *int P4[] = new int [1];
	 *
	 * System.out.print("Qual a coordenada X do P1? ");
	 * P1[0]= input.nextInt();
	 * System.out.print("Qual a coordenada Y do P1? ");
	 * P1[1]= input.nextInt();
	 * 
	 * System.out.print("Qual a coordenada X do P2? ");
	 * P2[0]= input.nextInt();
	 * System.out.print("Qual a coordenada Y do P2? ");
	 * P2[1]= input.nextInt();
	 * 
	 * System.out.print("Qual a coordenada X do P3? ");
	 * P3[0]= input.nextInt();
	 * System.out.print("Qual a coordenada Y do P3? ");
	 * P3[1]= input.nextInt();
	 * 
	 * System.out.print("Qual a coordenada X do P4? ");
	 * P4[0]= input.nextInt();
	 * System.out.print("Qual a coordenada Y do P4? ");
	 * P4[1]= input.nextInt();
	 */
	}
}
