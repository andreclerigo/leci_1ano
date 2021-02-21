/* JAM, 14-nov-2019
 * Ficheiros de texto
 * Copia ficheiro de entrada (ou da linha de comanados)
 * para out.txt e calcula histograma de letras
 */
import java.util.Scanner;
import java.io.*;

public class HistLetrasFich {
    public static void main(String[] args) throws IOException{ //throws IOException para prevenir erros
        Scanner kb = new Scanner(System.in);
        int letras[] = new int[26]; // array para histograma
int d = 'a'-'A';
System.out.println(d);
        String fName;
        String frase = new String();
        if (args.length == 0) {
            System.out.print("Nome do ficheiro: ");
            fName = kb.nextLine();
        } else fName =args[0];
        // Associa ficheiro com objeto File que o passa a identificar
        File f = new File(fName);
        // A classe Scanner usa o objeto File para ler do ficheiro
        Scanner scFile = new Scanner(f);

        File f2 = new File("out.txt");
        // A classe PrintWriter usa o objeto File para escrever no ficheiro out.txt
        PrintWriter pw = new PrintWriter(f2);

        while(scFile.hasNextLine()) { //Testa se ficheiro tem mais linhas
            frase = scFile.nextLine();
            pw.println(frase);
            histogramaLetras(frase,letras);
        }
        // Fecha os ficheiros. Liberta os recursos de memória usados
        // e garante que a informação é escrita no disco.
        pw.close();
        scFile.close();

        // imprime histograma e guarda no ficheiro hist.txt
        escreveHistLetras(letras);
        escreveHistLetras(letras,"hist.txt");
    }
    static void histogramaLetras(String frase, int[] cont) {
        for(int i = 0 ; i < frase.length() ; i++) {
            char letra = frase.charAt(i);  // obtem a letra da posição i do string
	    // converte para minúsculas
	    if(letra >= 'A' && letra <= 'Z') letra = (char)(letra + ('a'-'A')); 
	    // incrementa histograma na posição relativa ao caracter: 'a' --> [0] ... 'z' --> [25]
	    if(letra >= 'a' && letra <= 'z'){ 
                int pos = (int)(letra - 'a');   // determina a posição do array
                cont[pos]++;                    // que corresponde à letra e soma 1
            }
        }
    }
    // imprime histograma no ecrã
    static void escreveHistLetras(int[] cont) {
        for(int i = 0 ; i < cont.length ; i++) {
            if(cont[i] > 0) {
                char l = (char)('a' + i);
                System.out.printf("%c -> %d\n", l, cont[i]);
            }
        }
    }
    // imprime histograma no ficheiro dado como argumento, fich
    static void escreveHistLetras(int[]cont, String fich) throws IOException {
        File f = new File(fich);
        PrintWriter pf = new PrintWriter(f);
        for(int i = 0 ; i < cont.length ; i++) {
            if(cont[i] > 0) {
                char l = (char)('a' + i);
                pf.printf("%c -> %d\n", l, cont[i]);
            }
        }
        pf.close();
    }

}
