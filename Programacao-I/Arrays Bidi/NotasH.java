/* Aula 6, JAM, 31-out-2019
 * - arrays como argumentos e retorno de funções
 * - arrays 2 dimensões
 * Ler notas de 0 a 20, calcular media, min, max, imprimir, histograma
 */
import java.util.Scanner;

public class NotasH {

    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);

        float media;

        int[] notas = {11, 5, 12, 5, 5, 13};

        //~ gerarNotas(notas);
        //~ notas = gerarNotas(12);
        printArray(notas);
        media = media(notas);
        System.out.printf("Media = %4.1f%n",media);
        System.out.printf("Array to string: %s %n",aToString(notas));
        System.out.printf("Nota por extenso (%d): %s%n",2, notaExtenso(2));
        printArray(notas,3);
        System.out.printf("Maximo = %d%n",max(notas));

        // cálculo do histograma
        System.out.printf("Histograma:%n");
        int[][] histo;
        histo = hist(notas,notas.length);
        // imprime histograma
        for (int i = 0; i < histo.length; i++)
            System.out.printf("%3d %3d %n",histo[i][0],histo[i][1]);

    }

    // print arrays int - overloading - for each
    static void printArray(int[] i) {
        System.out.printf("Array(%d):%n", i.length);
        for (int n:i) {
            System.out.printf("%d%n",n);
        }
    }
    static void printArray(int[] i, int num) {
        System.out.printf("Array(%d):%n", num);
        if (num > i.length) num=i.length;
        for (int k=0; k<num; k++) {
            System.out.printf("%d%n",i[k]);
        }
    }
    // média
    static float media(int[] n) {
        int soma =0;
        for (int i=0; i < n.length; i++ ) {
            soma = soma + n[i];
        }
        return (float)soma/n.length;
    }
    // f array to string
    static String aToString(int[] a) {
        String s = "";
        for (int i=0; i<a.length; i++)s = s + a[i] + " ";
        return s;
    }
    // gerar array de n notas entre 0 e 20;
    static void gerarNotas(int[] a) {
        for (int i=0; i<a.length; i++)a[i]=(int)(Math.random()*21);

    }
    static int[] gerarNotas(int n) {
        int[] a = new int[n];
        for (int i=0; i<a.length; i++)a[i]=(int)(Math.random()*21);
        return a;
    }
    // devolve nota inteira por extenso
    static String notaExtenso(int v) {
        String[] s = {"zero","um","dois","tres"};
        return s[v];
    }
    // máximo valor do array
    static int max(int[] a) {
        int max = a[0];
        for (int i=1; i < a.length; i++ ) {
            if (a[i] > max)max=a[i];
        }
        return max;
    }
    // arrays 2d
    //
    // f histograma
    // find - procura no array a, de comprimento n, o valor v
    static int find(int[][] a, int n, int v) {
        int indice = -1;    // não encontrou valor
        for (int i=0; i<n; i++) {
            if(a[i][0] == v) indice = i;
        }
        return indice;
    }
    static int[][] hist(int[] a, int n) {
        int nc=0;
        int[][] h = new int[a.length][2];
        for (int i=0; i<n; i++) {
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
