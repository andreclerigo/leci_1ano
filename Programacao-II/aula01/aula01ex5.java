import java.util.*;

public class aula01ex5{
	public static void main (String [] args){
		double n, soma=0, media;
		int i=0;
		Scanner read = new Scanner (System.in);
		
		do{
			n = read.nextDouble();
			i++;
			soma = soma + n;
		}while(n != 0);
		System.out.println(soma);
		media = soma / (i-1);
		System.out.println(media);
	}
}
