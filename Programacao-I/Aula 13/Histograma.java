/*
 * jam, out-2017
 * Histograma de números inteiros
 *
 */
import java.util.Scanner;

public class Histograma {

    public static void main(String[] args) {

        int[] notas = {11,5,12,15,7,13,11,10, 11, 7, 555};








        // calculo do histograma
        int[][] histo;
        histo = hist(notas,notas.length);
        for (int i=0;i<histo.length;i++)System.out.printf("%3d %3d %n",histo[i][0],histo[i][1]);

    }

    // arrays 2d
    // f histograma
    static int find(int[][] a, int n, int v){
        int indice = -1;
        for (int i=0;i<n;i++){
            if(a[i][0] == v) indice = i;
        }
        return indice;
    }
    static int[][] hist(int[] a, int n){
        int nc=0;
        int[][] h = new int[a.length][2];
        for (int i=0;i<n; i++){
            int indice = find(h,nc,a[i]);
            if ( indice == -1) { // cria novo num
                h[nc][0]=a[i];
                h[nc][1]=1;
                nc++;
            } else {             // num existe, atualiza freq
                 h[indice][1]++;
            }
        }
        // devolve array completo, só com numeros válidos
        int[][] h2 = new int[nc][2];
        System.arraycopy(h,0,h2,0,nc);
        return h2;
    }

}
