/* Teste prático, exemplo 2019/20
* NMec: 98485
* Nome: André Pragosa Clérigo
*/

import java.util.Scanner;

public class TesteExemplo {
	static Scanner ler = new Scanner(System.in);
	
	public static void main(String[] args) {
		int[] notas = {4, 6, 7, 5, 4, 6, 6, 8, 11};
		int[] histo;
		double mediaf,mediat;
		
		System.out.printf("Introduza notas dos alunos(nota 0-10; 11 faltou): %n");
		notas = LerNotas(10);
		
		listar(notas); // lista notas
		histo = Histograma(notas); // calcula histograma
		ImprimeHistograma(histo); // imprime histograma
		mediaf= Medias(notas,'f'); // calcular média freq  
		mediat= Medias(notas,'t'); // calcular média total
		
		System.out.printf("\nMedia Total = %4.1f", mediat); // 6) Imprime medias
		System.out.printf("\nMedia alunos freq. = %4.1f", mediaf); // .... Código para imprimir médias
		}
		
		// 1) Listar notas no ecrã
		public static void listar(int[] notas) {
			for(int i=0; i<notas.length; i++){
				System.out.printf("%d, ", notas[i]);
			}
		}
		
		// 2) função para ler notas entre 0 e 11. 11 significa que o aluno faltou. Devolve array com as notas
		public static int[] LerNotas(int numNotas) {
			int[] notas_novas= new int [numNotas];
			for(int i=0; i<numNotas; i++){
				System.out.printf("Nota aluno %d? ",i+1);
				notas_novas[i] = ler.nextInt();
			}
			return notas_novas;
		}
		
		// 3) função histograma
		public static int[] Histograma(int[] notas) {
			int[] contagem_notas = new int [12];
			
			for(int i=0; i<=11; i++){
				for(int j=0; j<notas.length; j++){
					if (notas[j] == i){
						contagem_notas[i]++;
					}
				}
			}
			return contagem_notas;
		}
		
		// 4) Função ImprimeHistograma.
		// Cada linha tem a nota, e um no de * = à sua frequência
		public static void ImprimeHistograma (int[] hist) {
			for(int i=0; i<12; i++){
				System.out.printf("\nNota %d:", i);
				for(int j=0; j<hist[i]; j++){
					System.out.print("*");
				}
			}
		}
		
		// 5) função medias de freq ou total conforme tipo = 'f' ou 't'
		public static double Medias(int[] lista,char tipo) {
			int soma=0; 
			double media=0.0, alunos=10.0;
			
			if (tipo == 'f'){
				for (int i = 0; i <lista.length; i++){
					if (lista[i]==11){
						alunos--;
						continue;
					}
					soma = soma + lista[i];
				}
				media = soma / alunos;
			}
			
			soma = 0;
			
			if (tipo == 't'){
				for (int i = 0; i <lista.length; i++){
					if (lista[i]==11){
						continue;
					}
					soma = soma + lista[i];
				}
				media = soma / 10.0;
			}
			
			return media;
		}
}
