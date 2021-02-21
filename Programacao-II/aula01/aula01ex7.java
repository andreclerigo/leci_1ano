import java.util.*;
import java.io.*;

public class aula01ex7{
	public static void main(String [] args)  throws IOException{
		char escolha;
		
		Scanner read = new Scanner (System.in);
		
		System.out.println("Ficheiro de entrada:");
		String nameIn = read.nextLine();
		File fin = new File(nameIn);
		
		if (!fin.exists()) {
			System.out.println("ERROR: file " +  nameIn + " doesn't exist");
			System.exit(2);
		}
		if (fin.isDirectory()) {
			System.out.println("ERROR: file " +  nameIn + " is a directory");
			System.exit(3);
		}
		if (!fin.canRead()) {
			System.out.println("ERROR: You don't have permission to acess " + nameIn);
			System.exit(4);
		}
		if (!fin.canWrite()){
			System.out.println("ERROR: You don't have permission to wirte on " + nameIn);
			System.exit(6);
		}
		System.out.println("The file is valid");
		
		System.out.println("Ficheiro de saida:");
		String nameOut = read.nextLine();
		File fout = new File(nameOut);
		
		if (fout.exists()) {
			System.out.println("ERROR: file " +  nameOut + " already exists");
			
			System.out.println("Would you like to delete the current file? (y/n)");
			escolha = read.next().charAt(0);
		
			if (escolha == 'n'){
				System.exit(2);
			}else if (escolha == 'y'){
				fout.delete();
				System.out.println("Current file deleted");
			}else System.out.println("Choice out of boundaries"); System.exit(5);
		}
		if (fout.isDirectory()){
			System.out.println("ERROR: file "+ nameOut + " is a directory");
			System.exit(3);
		}
		if (!fout.canRead()){
				System.out.println("ERROR: You don't have permission tto acess " + nameOut);
		}
			
			
		PrintWriter pw = new PrintWriter(fout);
		Scanner scf = new Scanner(fin);
        while(scf.hasNextLine()) {
            pw.println(scf.nextLine());
        }
        scf.close();
        pw.close();
	}
}
