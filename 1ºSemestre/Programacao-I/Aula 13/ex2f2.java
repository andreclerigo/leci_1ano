import java.util.*;
import java.io.*;

public class ex2f2{
	public static void main (String[] args){
		Scanner input = new Scanner (System.in);
		int opcao;
		
		do{
			System.out.println("Gestão de uma prova automóvel:");
			System.out.println("1 - Inserir informação dos pilotos");
			System.out.println("2 - Listar pilotos ordenados pelo número da viatura");
			System.out.println("3 - Alterar informação de um piloto");
			System.out.println("4 - Remover piloto com base no número da viatura");
			System.out.println("5 - Listar pilotos ordenados pelo nome");
			System.out.println("6 - Remover piloto(s) com base no nome");
			System.out.println("7 - Validar matriculas");
			System.out.println("8 - Terminar o programa");
			System.out.println("Opcção ->");
			
			opcao = input.nextInt();
		}while (opcao != 6);
		
		static pilotos[]{
			
		}
	}
}

class pilotos{
	int numero_viatura;
	String nome;
	String matrícula;
}
