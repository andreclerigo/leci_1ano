import java.util.*;

public class aula01ex2{
	public static void main (String [] args){
		double NF, CTP, CP, AP1, AP2, ATP1, ATP2;
		String NFapresentada = new String();
		Scanner read = new Scanner(System.in);
		
		System.out.println("Notas de AP1, AP2, ATP1, ATP2 respeticamente");
		AP1 = read.nextDouble();
		AP2 = read.nextDouble();
		ATP1 = read.nextDouble();
		ATP2 = read.nextDouble();
		
		CTP = (ATP1 + ATP2)/2;
		CP = (AP1 + AP2)/2;
		
		NF = 0.30*CTP + 0.7*CP;
		if (CTP<6.5 || CP<6.5){
			NFapresentada = "RNM";
		}else {
			NFapresentada = "" + NF;
		}
		
		System.out.printf("Nota final: %s, Nota Teorica: %f, Nota Pratica: %f ", NFapresentada, CTP, CP);
	}
}
