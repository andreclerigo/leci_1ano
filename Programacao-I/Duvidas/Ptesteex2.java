/**
 * Diogo Daniel Soares Ferreira, 2014
 * <diogodanielsoaresferreira@ua.pt>
 * Nº Mec. 76504
 */
package p1;

import static java.lang.System.*;
import java.util.Scanner;

public class Ptesteex2 {

	static final Scanner sc=new Scanner (System.in);
	
	public static void main(String[] args) {
		
		int o;
		piloto [] participantes=new piloto [10];

		
		do {
			out.print("\n\nGestão de uma prova automóvel:");
			out.print("\n1 - Inserir informação dos pilotos");
			out.print("\n2 - Listar pilotos ordenados pelo número da viatura");
			out.print("\n3 - Alterar informação de um piloto");
			out.print("\n4 - Remover piloto com base no número da viatura");
			out.print("\n5 - Listar pilotos ordenados pelo nome");
			out.print("\n6 - Remover piloto(s) com base no nome");
			out.print("\n7 - Validar matrículas");
			out.print("\n8 - Terminar programa");
			out.print("\nOpção ->");
			o = sc.nextInt();
			switch (o) {
			case 1:
				insPil(participantes);
				break;
			case 2:
				lisPilNum(participantes);
				break;
			case 3:
				altIPil(participantes);
				break;
			case 4:
				remPil(participantes);
				break;
			case 5:
				listPilNom(participantes);
				break;
			case 6:
				rmvPil(participantes);
				break;
			case 7:
				valMat(participantes);
				break;
			case 8:
				break;
			default:
				out.print("\nEscolha inválida!");
				break;
			}
		} while (o!=8);

	}
	
	public static void insPil(piloto[] a){
		String name, matricula;
		int i=0;

		while(sc.nextLine().length()!=0);
		while(i<10){
			out.print("\n\nInsira o nome do piloto: ");
			name=sc.nextLine();
			if(name.isEmpty()) return;
			
			out.print("\nInsira a matrícula da viatura: ");
			matricula=sc.nextLine();
			
			a[i]=new piloto();
			a[i].n=i+1;
			a[i].nome=name;
			a[i].mat=matricula;
			i++;
			if(i==10){
				out.print("Base da dados completa!");
			}
		}
	}

	public static void lisPilNum(piloto[] a){
		int n=countP(a);
		boolean troca;
		
		do{
			troca=false;
			for(int i=0;i<n-1;i++){
				if(a[i].n<a[i+1].n){
					piloto []tmp=new piloto[1];
					tmp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=tmp[0];
					troca=true;
				}
			}
			
		}while(troca);
		
		for(int i=0;i<n;i++){
			out.print("\nNº de Veículo: "+a[i].n+"\tNome do piloto: "+a[i].nome+"\tMatrícula: "+a[i].mat+"\n");
		}
	}
	
	public static void altIPil(piloto []a){
		int n, pos=-1, count=countP(a);
		
		out.print("\nQual o número de viatura que deseja alterar? ");
		n=sc.nextInt();
		for(int i=0;i<count;i++){
			if(a[i].n==n){
				pos=i;
				break;
			}
		}
		
		if(pos==-1) out.print("\nO veículo não existe na base de dados.");
		else{
			while(sc.nextLine().length()!=0);
			out.print("\nNome do piloto: ");
			a[pos].nome=sc.nextLine();
			out.print("\nMatrícula: ");
			a[pos].mat=sc.nextLine();
		}
		
	}
	
	public static void remPil(piloto []a){
		int count=countP(a), pos=-1, n;
		
		out.print("\nInsira o número da viatura que deseja remover: ");
		n=sc.nextInt();
		
		for(int i=0;i<count;i++){
			if(a[i].n==n){
				pos=i;
				break;
			}
		}
		if(pos==-1)out.print("\nViatura não encontrada.");
		else{
			for(int i=pos;i<count;i++){
				a[i]=a[i+1];
				a[i+1]=null;
				if(a[i+1]==a[9]) break;
			}

			out.print("\nViatura removida com sucesso!");
		}
		
	}
	
	public static void listPilNom(piloto []a){
		int count=countP(a);
		boolean troca;
		
		do{
			troca=false;
			for(int i=0;i<count-1;i++){
				if(Character.getNumericValue(a[i].nome.charAt(0))>Character.getNumericValue(a[i+1].nome.charAt(0))){
					piloto[]tmp=new piloto[1];
					tmp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=tmp[0];
					troca=true;
				}
			}
			
		}while(troca);
		
		for(int i=0;i<count;i++){
			out.print("\nNº de Veículo: "+a[i].n+"\tNome do piloto: "+a[i].nome+"\tMatrícula: "+a[i].mat+"\n");
		}
		
	}
	
	public static void rmvPil(piloto []a){
		String nome;
		int n=countP(a), z=0, dec=0;;
		int []pos=new int[10];
		
		while(sc.nextLine().length()!=0);
		out.print("Qual o nome do piloto que deseja remover? ");
		nome=sc.nextLine();
		for(int i=0;i<n;i++){
			if(a[i].nome.indexOf(nome)!=-1){
				pos[z]=i;
				z++;
			}
		}
		int j=countN(pos);
		if(j==1) dec=0;
		else{
			out.print("Deseja remover qual piloto dos seguintes:");
			for(int i=0;i<j;i++){
				out.print("\n"+(i+1)+": "+a[pos[i]].nome);
			}
			out.print("\nOpção (Número):" );
			dec=(sc.nextInt()-1);
		}

		int i=pos[dec];
		for(;i<n;i++){
			a[i]=a[i+1];
			a[i+1]=null;
			if(a[i+1]==a[9]) break;
		}

		out.print("\nPiloto removido com sucesso!");
		
	}
	
	public static void valMat(piloto []a){
		int n=countP(a);
		
		while(sc.nextLine().length()!=0);
		for(int i=0;i<n;i++){
			if(!mat(a[i].mat)){
				out.print("\nA matricula de "+a[i].nome+" não é válida. Insira novamente: ");
				a[i].mat=sc.nextLine();
				i--;
			}
		}

		out.print("\nAs matriculas estão válidas!");
		
	}
	
	public static int countP(piloto[] a){
		int i;
		for(i=0;i<10;i++){
			if(a[i]==null) break;
		}
		
		return i;
	}
	
	public static int countN (int []a){
		int i;
		for(i=0;i<10;i++){
			if(a[i]==0 && i!=0) break;
		}
		
		return i;
	}

	public static boolean mat(String m){
		if(m.length()!=8) return false;
		if(m.charAt(2)!='-'&&m.charAt(5)!='-') return false;
		
		if(Character.isLetter(m.charAt(0)) && Character.isLetter(m.charAt(1))&& Character.isDigit(m.charAt(3))&& Character.isDigit(m.charAt(4))&& Character.isDigit(m.charAt(6))&& Character.isDigit(m.charAt(7))) return true;
		if(Character.isDigit(m.charAt(0)) && Character.isDigit(m.charAt(1))&& Character.isLetter(m.charAt(3))&& Character.isLetter(m.charAt(4))&& Character.isDigit(m.charAt(6))&& Character.isDigit(m.charAt(7))) return true;
		if(Character.isDigit(m.charAt(0)) && Character.isDigit(m.charAt(1))&& Character.isDigit(m.charAt(3))&& Character.isDigit(m.charAt(4))&& Character.isLetter(m.charAt(6))&& Character.isLetter(m.charAt(7))) return true;
		
		return false;
	}
}

class piloto{
	int n;
	String nome;
	String mat;
}