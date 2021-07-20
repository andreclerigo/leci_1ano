import java.io.*;

public class FindFile{
	public static void main(String [] args){
		File f = null;
		File teste = null;
		File[] conteudo;
		String dirActual = ".";
		
		if (args.length < 1){
			System.out.println("Uso: java -ea FindFile <padrao> [<dir>]");
			System.exit(0);
		}
		
		//Verifica se o segundo argumento é directorio
		try{
			teste = new File(args[1]);
			if (teste.isDirectory()){
				dirActual = args[1];
			}else{
				System.out.println("ERRO: O directorio " + "\"" + args[1] + "\"" + "não existe!");
				System.exit(0);
			}
		}catch(ArrayIndexOutOfBoundsException e){ 
			dirActual = ".";  //Se nao houver segundo argumento assume direct atual
		}
		
		printDir(dirActual, args[0]);	
	}
	
	public static void printDir (String path, String str){
		File f = new File(path);
		File[] conteudo = f.listFiles();
		/**   So imprime o que for igual
		for (int i = 0; i < conteudo.length ; i++){
			if(conteudo[i].getPath().equals(path + "/" + str)){
				System.out.println(conteudo[i].getPath());
			}
		**/
			
		for (int i = 0; i < conteudo.length; i++){
			if (conteudo[i].getPath().indexOf(str) >= 0){
				System.out.println(conteudo[i].getPath());
			}
		}	
	}
}
