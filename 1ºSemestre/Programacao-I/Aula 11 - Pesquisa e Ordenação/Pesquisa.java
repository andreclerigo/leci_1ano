/*
 *  JAM, 5-dez-2019
 *      Pesquisa sequêncial e binária
 */
import java.util.*;

public class Pesquisa {
    static Scanner ler = new Scanner(System.in);

    public static void main (String args[]) {
        int[] lista1 = {2,4,5,6,11,13,18,23,33,55};
        System.out.println(Arrays.toString(lista1));

        System.out.printf("Valor a pesquisar: ");
        int val=ler.nextInt();

        System.out.printf("Bin -posicao de %d = %d\n",val,pesquisaBinaria(lista1, val) );
        System.out.printf("Seq -posicao de %d = %d\n",val,pesquisaSequencial(lista1, lista1.length,val) );
        System.out.printf("Seq2-posicao de %d = %d\n",val,pesquisaSeq(lista1, lista1.length,val) );
    }
    // pesquisa binária numa lista ordenada
    public static int pesquisaBinaria(int[] lista, int valor) {
        int inicio=0,fim=lista.length-1,meio;
        int haValor= -1;
        do {
            meio=(inicio+fim)/2;
            if (valor > lista[meio] ) {
                inicio=meio+1;
            } else if (valor < lista[meio]) {
                fim=meio-1;
            } else {
                haValor = meio;
            }
            // System.out.printf("%d %d posicao = %d \n",inicio,fim,meio);
        } while(haValor == -1 && inicio <= fim );// não encontra e i<=f

        return haValor;
    }
    public static int pesquisaSequencial(int seq[],int nElem, int valor ) {
        int pos = -1; // inicializamos com um valor inválido
        for(int i = 0 ; i < nElem ; i++) {
            if(seq[i] == valor) {
                pos = i;

            }
        }
        return pos;
    }
    public static int pesquisaSeq(int seq[],int nElem, int valor ) {
        int n=0;
        int pos = -1; // inicializamos com um valor inválido

        do {
            if(seq[n++] == valor) {
                pos = n-1;
            }
        } while(pos == -1 && n <nElem); // acaba quando encontra valor
        return pos;
    }


}
