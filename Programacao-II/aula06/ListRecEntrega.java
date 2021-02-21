/**
 * André Pragosa Clérigo 98485
 * Frederico Vieira 98518
 * Maria Beatriz Cunha Leite 93373
 * Maria Eduarda Aires Rocha Tavares 98447
 **/

import java.io.*;

public class ListRecEntrega{
	public static void main (String [] args){
		File f = null;
		File teste = null;
		File[] conteudo;
		String dirActual = ".";
		
		//Verifica se os argumentos contem um File
		try{
			teste = new File(args[0]);
			if (teste.isDirectory()){
				dirActual = args[0];
				System.out.println(args[0]);
			}else{
				System.out.println("ERRO: O directorio " + "\"" + args[0] + "\"" + "não existe!");
				System.exit(0);
			}
		}catch(ArrayIndexOutOfBoundsException e){
			System.err.println(".");
		}
		printDir(dirActual);
	}
	
	//Imprime e verifica se há directorios dentro do directorio
	public static void printDir (String path){
		File f = new File(path);
		File[] conteudo = f.listFiles();
		for (int i = 0; i < conteudo.length ; i++){
			System.out.print(conteudo[i]);
			System.out.println();
			if(conteudo[i].isDirectory()) {
				printDir(conteudo[i].getPath());
			}
		}
	}
}
