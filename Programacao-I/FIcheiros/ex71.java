import java.io.*;
import java.util.*;

public class ex71{
	public static void main (String[] args) throws IOException{
		Scanner input = new Scanner (System.in);
		
		String file_name = input.nextLine();
		
		File file = new File (file_name);
		
		Scanner fich = new Scanner(file);
		
		if (!file.isFile()){
			System.out.print("ERROR: File " +file_name + "is not a file");
		}else if (!file.canRead()){
			System.out.printf("ERROR: No permissions to open" + file_name);
		}else {
			while(fich.hasNextLine()){
				String texto = fich.nextLine();
				System.out.printf("%s \n", texto);
			}
			fich.close();
		}
		
	}
}
