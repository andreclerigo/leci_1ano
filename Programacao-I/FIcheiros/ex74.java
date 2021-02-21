import java.io.*;
import java.util.*;

public class ex74{
	public static void main (String[] args) throws IOException{
		Scanner input = new Scanner (System.in);
		
		System.out.println("Qual o nome do ficheiro que deseja introduzir?");
		String file_name = input.nextLine();
		File file = new File (file_name);
		
		Scanner fich = new Scanner (file);
	}
}
