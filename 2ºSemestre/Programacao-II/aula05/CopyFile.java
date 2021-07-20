import java.util.*;
import java.io.*;

public class CopyFile{
	public static void main(String [] args) throws IOException{
		String filenamein = args[0];
		File fin = new File (filenamein);
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
		Scanner kb = new Scanner (System.in);
		String filenameout = args[1];
		File fout = new File (filenameout);
		if (fout.exists()){
			if (!fout.canWrite()){
			System.err.println("ERROR: " + "can't write on " + filenameout);
			System.exit(6);
			}
			
			System.err.println(filenameout + " already exists would you like to overwrite? (y/n)");
			String answer = kb.nextLine();
			if (answer == "n" || answer == "no"){
				System.exit(4);
			}else{
				fout.delete();
			}
		}else if (fout.isDirectory()){
			System.err.println("ERROR: " + filenameout + "is a directory!");
			System.exit(5);
		}else {
			System.err.println(filenameout + " is valid!");
			System.err.println("Localização: " + fout.getAbsolutePath());
		}
		copyFile(fin, fout);
	}
	static void copyFile(File fin, File fout){
		try{
			Scanner sc = new Scanner(fin);
			PrintWriter pwf = new PrintWriter(fout);
			while(sc.hasNextLine()){
				pwf.println(sc.nextLine());
			}
			sc.close();
			pwf.close();
			System.out.println("Files copied with sucess!");
		}catch (IOException e){
			System.err.println("Error while copying file!");
			System.exit(7);
		}
	}
}
