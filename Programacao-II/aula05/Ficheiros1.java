/* JAM, 14-nov-2019
 * Ficheiros de texto
 * Uso da calsse File para testar e ver propriedades dos ficheiros
 * 
 */
import java.util.Scanner;
import java.io.*;

public class Ficheiros1 {
    public static void main(String[] args) throws IOException {
        Scanner kb = new Scanner(System.in);

        System.out.print("Ficheiro de entrada: ");
        String nameIn = kb.nextLine();
        File fin = new File(nameIn);

        if (!fin.exists()) {
            System.out.println("ERROR: input file " + nameIn + " does not exist!");
        } else if (fin.isDirectory()) { // testa se ficheiro é um diretório
            System.out.println("ERROR: input file " + nameIn + " is a directory!");
        } else if (!fin.canRead()) {
            System.out.println("ERROR: cannot read from input file " + nameIn + "!");
        } else {
            System.out.println("Ficheiro valido: " + nameIn);
            System.out.println("Comprimento ficheiro: " + fin.length());
            System.out.println("Caminho do ficheiro = " + fin.getAbsolutePath());
            //
            // copia ficheiros fin --> "out.txt"
            //
            Scanner lerF = new Scanner(fin);
            
	    File fout = new File("out.txt");
	    PrintWriter pw = new PrintWriter(fout);
            
	    while(lerF.hasNextLine())
                pw.println(lerF.nextLine());
            lerF.close();

            pw.close();
        }
    }
}

