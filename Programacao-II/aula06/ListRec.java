import java.io.*;

public class ListRec{
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
