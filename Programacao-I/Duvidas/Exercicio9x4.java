import java.util.*;

public class Exercicio9x4 {
	
	public static void main (String[] args) {
	Scanner sc = new Scanner(System.in);
	String matricula;	
	boolean matricula_pt;

		System.out.print("insira a matricula: ");
		matricula = new String(sc.nextLine());
			
		matricula_pt=matchPattern(matricula);
		
		if(matricula_pt){
		System.out.println("a matricula é portuguesa");
		}
		else{
		System.out.println("ERRO: a matricula nao é portuguesa");
		}
		
	}
	
	public static boolean matchPattern(String frase){
	boolean matricula_pt=false;
	
		if( (frase.length()==8) && (frase.charAt(2)=='-') && (frase.charAt(5)=='-') ){

			if(Character.isUpperCase(frase.charAt(0))&& Character.isUpperCase(frase.charAt(1))&&Character.isDigit(frase.charAt(3))&& Character.isDigit(frase.charAt(4))&& Character.isDigit(frase.charAt(6))&& Character.isDigit(frase.charAt(7))){//AA-00-00
				matricula_pt=true;
			}
			
			if(Character.isUpperCase(frase.charAt(3))&& Character.isUpperCase(frase.charAt(4))&&Character.isDigit(frase.charAt(0))&& Character.isDigit(frase.charAt(1))&& Character.isDigit(frase.charAt(6))&& Character.isDigit(frase.charAt(7))){//00-AA-00
				matricula_pt=true;
			}
			
			if(Character.isUpperCase(frase.charAt(6))&& Character.isUpperCase(frase.charAt(7))&&Character.isDigit(frase.charAt(3))&& Character.isDigit(frase.charAt(4))&& Character.isDigit(frase.charAt(0))&& Character.isDigit(frase.charAt(1))){//00-00-AA
				matricula_pt=true;
			}
		}
		
	return matricula_pt;
	}
}
