import java.util.*;
import java.io.*;

public class ListDir{
	public static void main (String [] args){
		File f = null;
		File teste = null;
		File[] conteudo;
		String dirActual = ".";
		
		try{
			if (!(args[0] == null)){
				teste = new File(args[0]);
				if (teste.isDirectory()){
					dirActual = args[0];
				}else{
					System.err.println("Assuming current directory as the rigth one!");
					dirActual = ".";
				}
			}
			
		}catch(ArrayIndexOutOfBoundsException e){
			System.err.println("ERROR: " + e);
			System.err.println("Assuming current directory as the right one!");
		}
		
		f = new File(dirActual);
		conteudo = f.listFiles();
		for (int i = 0; i < conteudo.length ; i++){
			String tipo = null;
			String read = null;
			String write = null;
			if(conteudo[i].isDirectory()){
				tipo = "D";
			}else{
				tipo = "F";
			}
			if(conteudo[i].canRead()){
				read = "R";
			}else{
				read = "-";
			}
			
			if(conteudo[i].canWrite()){
				write = "W";
			}else{
				write = "-";
			}
			System.out.printf("%s%s%s  ", tipo, read, write);
			System.out.print(conteudo[i]);
			System.out.println();
		}
	}
}
