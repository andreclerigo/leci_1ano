/*TPA98485
 *Nª 98485
 * André Clérigo
 */
 
 import java.util.*;
 
 public class teste22015{
	 static Scanner input = new Scanner (System.in);
	
	 public static void main (String args[]){
		 int numero_notas;
		 
		 do{                                                                              //Verificacao para o numero de notas (deve ser >0)
			System.out.print("Quantas notas vai inserir? ");
			numero_notas = input.nextInt();
			
			if(numero_notas < 0) System.out.println("Valor introduzido inválido");
		 }while (numero_notas<0);
		 
		 int[] notas = ler_notas(numero_notas);
		 int menu;
		 
		 do{
			System.out.printf("Menu:\n1-Listar notas\n2-Listar Histogramas\n3-Calcular médias totais\n4-Calcular a percentagens de alunos e alunas\n5-Calcular o desvio padrão\n6-Sair\n");
			do{
				System.out.print("Opcao: ");
				menu = input.nextInt();
			}while(menu<1 || menu>6);
		 
			switch(menu){
				case 1: listar_notas(notas);
						break;
				case 2: listar_histogramas(notas);
						break;
			}
		}while(menu!=6);
	 }
	 
	 public static int [] ler_notas (int numero_notas){
		 int [] notas = new int [numero_notas];
		 int i;
		 
		 System.out.println("Introduz os valores das notas:");
		 for(i=0; i<numero_notas;i++){
			 notas[i] = input.nextInt();
		 }
		 
		 return notas;
	 }
	 
	 public static void listar_notas (int[] notas){
		 int i;
		 
		 System.out.print("Notas: ");
		 for(i=0; i<notas.length; i++){
			 System.out.printf("%d, ", notas[i]);
		 }
	 }
	 
	 public static void listar_histogramas (int[] notas){;
		 int i;
		 
		 for(i=0; i<
	 }
 }
