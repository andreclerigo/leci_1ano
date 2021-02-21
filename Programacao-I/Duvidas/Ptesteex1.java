/**
 * Diogo Daniel Soares Ferreira, 2014
 * <diogodanielsoaresferreira@ua.pt>
 * Nº Mec. 76504
 */
package p1;

import java.util.Scanner;
import static java.lang.System.*;
import java.io.*;

public class Ptesteex1 {

	static final Scanner sc = new Scanner (System.in);
	
	public static void main(String[] args) throws IOException{
		int n;
		Data arrData[]=new Data[31];
		
		do{
			out.print("\n\nEstação metereológica:");
			out.print("\n1 - Ler ficheiro de dados");
			out.print("\n2 - Acrescentar medida");
			out.print("\n3 - Listar valores de temperatura e humidade");
			out.print("\n4 - Listar medidas ordenadas por valor de temperatura");
			out.print("\n5 - Listar medidas ordenadas por valor de humidade");
			out.print("\n6 - Calcular valores médios de temperatura e humidade");
			out.print("\n7 - Calcular valores máximos e mínimos de temperatura e humidade");
			out.print("\n8 - Calcular histograma das temperaturas e humidade");
			out.print("\n9 - Terminar programa");
			out.print("\nOpção ->");
			n=sc.nextInt();
			
			switch(n){
			case 1:
				readFile(arrData);
				break;
			case 2:
				addData(arrData);
				break;
			case 3:
				showData(arrData);
				break;
			case 4:
				tempCresc(arrData);
				break;
			case 5:
				humDecresc(arrData);
				break;
			case 6:
				valMed(arrData);
				break;
			case 7:
				extr(arrData);
				break;
			case 8:
				histogramaTemp(arrData);
				histogramaHum(arrData);
				break;
			case 9: break;
			default:
				out.print("\n\nValor inválido!\n\n");
				break;
			}
		}while(n!=9);

	}
	
	public static void readFile(Data []a) throws IOException{
		String fich;
		File fichDad;
		int i=countDatas(a);
		
		while(sc.nextLine().length()!=0);
		do{
			out.print("\n\nQual é o nome do ficheiro que deseja ler? ");
			fich=sc.nextLine();
			fichDad = new File(fich);
		}while(!fichDad.canRead()||!fichDad.exists()||!fichDad.isFile());

		Scanner lerFil = new Scanner (fichDad);
		
		while (lerFil.hasNextLine()){
			if(i==31) break;
			if(!lerFil.hasNext());
			
			a[i]=new Data();
			a[i].temp=lerFil.nextInt();
			a[i].hum=lerFil.nextInt();
			i++;
		}
		
		out.print("\nValores inseridos com sucesso!\n\n");
		
		lerFil.close();
		
	}

	public static void addData(Data []a){
		int n=countDatas(a);
		int temp;
		
		if(n==31){
			out.print("\n\nA base de dados está completa!\n\n");
			return;
		}
		else a[n]=new Data();
		
		do{
			out.print("\n\nInsira uma nova temperatura: ");
			temp=sc.nextInt();
		}while(temp<-10 || temp>40);
		a[n].temp=temp;
		
		do{
			out.print("\nInsira a humidade: ");
			temp=sc.nextInt();
		}while(temp<0||temp>100);
		a[n].hum=temp;
		
		out.print("\nOs novos valores foram armazenados com sucesso!\n\n");
	}

	public static void showData(Data []a){
		int n=countDatas(a);
		
		out.print("\n\n");
		out.print("Temperatura:\tHumidade:\n");
		for(int i=0;i<n;i++){
			out.printf("%12d\t%9d\n",a[i].temp, a[i].hum );
		}
		out.print("\n\n");
	}
	
	public static void tempCresc(Data []a){
		int n=countDatas(a);
		boolean change;
		
		do{
			change=false;
			
			for(int i=0;i<n-1;i++){
				if(a[i].temp>a[i+1].temp){
					Data[]temp=new Data[1];
					temp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=temp[0];
					change=true;
				}
			}
		}while(change);
		
		showData(a);
	}

	public static void humDecresc(Data []a){
		int n=countDatas(a);
		boolean change;
		
		do{
			change=false;
			
			for(int i=0;i<n-1;i++){
				if(a[i].hum<a[i+1].hum){
					Data[]temp=new Data[1];
					temp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=temp[0];
					change=true;
				}
			}
		}while(change);
		
		showData(a);
	}
	
	public static void valMed(Data []a){
		int n=countDatas(a);
		int tempMed, humMed;
		boolean change;
		
		do{
			change=false;
			
			for(int i=0;i<n-1;i++){
				if(a[i].temp>a[i+1].temp){
					Data[]temp=new Data[1];
					temp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=temp[0];
					change=true;
				}
			}
		}while(change);
		
		tempMed=a[(n-1)/2].temp;
		
		do{
			change=false;
			
			for(int i=0;i<n-1;i++){
				if(a[i].hum>a[i+1].hum){
					Data[]temp=new Data[1];
					temp[0]=a[i];
					a[i]=a[i+1];
					a[i+1]=temp[0];
					change=true;
				}
			}
		}while(change);
		
		humMed=a[(n-1)/2].hum;
		
		out.print("\n\nO valor médio da temperatura é "+tempMed+" e o valor médio de humidade é "+humMed+".\n\n\n");
	}
	
	public static void extr(Data []a){
		int n=countDatas(a);
		int maxTemp=-10, maxHum=0, minTemp=40, minHum=100;
		
		for(int i=0;i<n;i++){
			if(maxTemp<a[i].temp) maxTemp=a[i].temp;
			if(maxHum<a[i].hum) maxHum=a[i].hum;
			if(minTemp>a[i].temp) minTemp=a[i].temp;
			if(minHum>a[i].hum) minHum=a[i].hum;
		}
		
		out.print("\n\nO valor máximo de temperatura é "+maxTemp+" e o mínimo é de "+minTemp+".");
		out.print("\nO valor máximo de humidade é "+maxHum+" e o mínimo é de "+minHum+".\n\n\n");
		
	}
	
	public static void histogramaTemp(Data []a){
		int n=countDatas(a);
		
		out.print("\n\nHistograma da temperatura");
		out.print("\n---------------------------");
		
		for(int i=-10;i<=40;i++){
			out.printf("\n%3d | ",i);
			out.print(counts(i,"temp",a)+"\n");
		}
	}
	
	public static void histogramaHum(Data []a){
		int n=countDatas(a);
		
		out.print("\n\nHistograma da humidade");
		out.print("\n---------------------------");
		
		for(int i=0;i<=100;i++){
			out.printf("\n%3d | ",i);
			out.print(counts(i,"hum",a)+"\n");
		}
	}
	
	public static String counts(int i, String a, Data []z){
		String res="";
		int n=countDatas(z);
		
		switch(a){
		
		case "temp":
			for(int j=0;j<n;j++){
				if(i==z[j].temp) res+="*";
			}
			break;
			
		case "hum":
			for(int j=0;j<n;j++){
				if(i==z[j].hum) res+="*";
			}
			break;
		}
		
		return res;
	}
	
	public static int countDatas(Data []a){
		int i=0;
		
		for(int n=0;n<31;n++){
			if(a[n]==null) break;
			else i++;
		}
		
		return i;
	}
}

class Data{
	int temp;
	int hum;
}
