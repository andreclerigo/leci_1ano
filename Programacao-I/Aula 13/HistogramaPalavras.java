/*
 * JAM, dez-2018
 * Histograma de palavras
 *
 */
import java.util.Scanner;

public class HistogramaPalavras {

    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);

        String f = "a ria de aveiro e a ria de ovar aveiro";
.
        String[] palavras = f.split(" ");
        //~String[] palavras = {"oii", "UM", "dois", "um", "ola", "um", "xixo", "Oii"};
        // calculo do histograma
        Freq[] histo;
        histo = hist(palavras,palavras.length);
        // imprime
        for (int i=0;i<histo.length;i++)System.out.printf("%10s %3d %n",histo[i].palavra,histo[i].freq);

    }

    // f histograma
    static int find(Freq[] h, int n, String pal){
        int indice = -1;
        for (int i=0;i<n;i++){
            if(h[i].palavra.equals(pal)) indice = i;
        }
        return indice;
    }
    static Freq[] hist(String[] a, int n){
        int nc=0;
        Freq[] h = new Freq[a.length];

        for (int i=0;i<n; i++){
            String pal = a[i].toLowerCase();
            int indice = find(h,nc,pal);
            if ( indice == -1) { // cria novo num
                h[nc] = new Freq();
                h[nc].palavra = pal;
                h[nc].freq = 1;
                nc++;
            } else {             // num existe, atualiza freq
                 h[indice].freq++;
            }
        }
        // devolve array completo, só com palavras válidas
        Freq[] h2 = new Freq[nc];
        System.arraycopy(h,0,h2,0,nc);
        return h2;
    }

}

class Freq {
    String palavra;
    int freq;
}
