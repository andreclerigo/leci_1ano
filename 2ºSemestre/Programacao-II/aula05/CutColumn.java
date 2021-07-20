import java.util.*;
import java.io.*;

public class CutColumn{
	public static void main (String[] args) throws IOException{
		String filenamein = args[0];
		File fin = new File (filenamein);
		int coluna = Integer.parseInt(args[1]);
		
		if (!fin.exists()){
			System.err.println("ERROR: " + filenamein + " doesn't exist!'");
			System.exit(1);
		}else if (fin.isDirectory()){
			System.err.println("ERROR: " + filenamein + "is a directory!");
			System.exit(2);
		}else if (!fin.canRead()){
			System.err.println("ERROR: " + "can't acess " + filenamein);
			System.exit(3);
		}else {
			System.err.println(filenamein + " is valid!");
			System.err.println("Comprimento do ficheiro: " + fin.length());
			System.err.println("Localização: " + fin.getAbsolutePath());
		}
		Scanner kb = new Scanner(fin);
		
		while(kb.hasNextLine()){
			String line = kb.nextLine();
			String[] colunas = line.split("[ \t]+");
			try{
				System.out.println(colunas[coluna-1]);
			}catch (java.lang.ArrayIndexOutOfBoundsException e){
				System.out.println();
			}
		}
	}
}
