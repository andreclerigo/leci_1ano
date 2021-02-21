import java.util.Scanner;

public class ex0210
{
	public static void main (String[] args)
	{
	 int P1[] = new int [1];
	 int P2[] = new int [1];
	 int P3[] = new int [1];
	 int P4[] = new int [1];
	 int V1[] = new int [1];
	 int V2[] = new int [1];
	 int V3[] = new int [1];
	 int V4[] = new int [1];
	 	 
	 System.out.print("Qual a coordenada X do P1? ");
	 P1[0]= input.nextInt();
	 System.out.print("Qual a coordenada Y do P1? ");
	 P1[1]= input.nextInt();
	 
	 System.out.print("Qual a coordenada X do P3? ");
	 P3[0]= input.nextInt();
	 System.out.print("Qual a coordenada Y do P3? ");
	 P3[1]= input.nextInt();
	 
	 P2[0]= P3[0];
	 P2[1]= P1[1];
	 
	 P4[0]= P1[0];
	 P4[1]= P3[1];
	 
	 System.out.print("Qual a coordenada X do V1? ");
	 V1[0]= input.nextInt();
	 System.out.print("Qual a coordenada Y do V1? ");
	 V1[1]= input.nextInt();
	 
	 System.out.print("Qual a coordenada X do V3? ");
	 V3[0]= input.nextInt();
	 System.out.print("Qual a coordenada Y do V3? ");
	 V3[1]= input.nextInt();
	 
	 V2[0]= V3[0];
	 V2[1]= V1[1];
	 
	 V4[0]= V1[0];
	 V4[1]= V3[1];
	 
	 if( (V1[0]>P1[0] && V1[0]<P2[0]) || 
	}
}

