import java.util.Scanner;

public class ex0112
{
	public static void main (String[]args)
	{
	int seg, hrs, min, outseg;
	int segacores, hrsacores, minacores;
	
	Scanner sc = new Scanner (System.in);
	System.out.printf("Segundos: ");
	seg = sc.nextInt();
	hrs = seg/3600;
	min = (seg%3600)/60;
	outseg= (seg%3600)%60;
	hrsacores = hrs-1;
	if ((outseg-1)>0){
		segacores=outseg -1;
	}
	else{
		 segacores= outseg;
	}
	if ((min-1)>0){
		minacores=min -1;
	}
	else{
		 minacores= min;
	}
	
	System.out.printf("Sao %02d Horas %02d Minutos %02d Segundos em Portugal continental, sao %02d Horas %02d Minutos e %02d Segundos no Arquipelago dos Açores", hrs, min, outseg, hrsacores, minacores, segacores);
	}
}
