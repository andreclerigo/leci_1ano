import java.util.*;

public class aula01ex4{
	public static void main (String [] args){
		String s = new String();
		String traducao = new String();
		
		Scanner read = new Scanner(System.in);
		
		do{
			s = read.nextLine();
			
			traducao = s.replaceAll("r", "");
			traducao = traducao.replaceAll("R", "");
			traducao = traducao.replaceAll("l", "u");
			traducao = traducao.replaceAll("L", "U");
			
			System.out.printf("%s \n", traducao);
		}while(!s.equals(""));
	}
}
