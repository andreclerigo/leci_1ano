/* JAM, 5-dez-2019
 * Ordenação por Seleção e por Bolha
 */
import java.util.Scanner;
import java.io.*;

public class Ordenar1 {
    public static void main(String[] args) throws IOException{
        Scanner kb = new Scanner(System.in);
        // le números inteiros de um ficheiro
        int[] a;
        String name = new String();
        System.out.print("Nome ficheiro: ");
        name = kb.nextLine();
        // verifica quantos números tem o ficheiro
        int n = fileSize(name);
        if (n>=0) {
            System.out.println("O ficheiro tem " + n + " números");
            // cria array e le numeros do ficheiro
            a = new int[n];
            readArrayFromFile(a, name);
        } else { // ficheiro não existe, gera array aleatorio
            a=gerarArray(10);
        }
        printArray(a);
        // ordena de forma crescente
        bubbleSort(a);
        System.out.println("Ordem crescente: ");
        printArray(a);
        // ordena de forma decrescente
        selectSort(a);
        System.out.println("Ordem decrescente: ");
        printArray(a);

        //TESTAR tempos de ordenação para tamanh de 100, 1000, 10000 e 100000
        long t1;
        long t2,t3,t4;
	int[] teste;
	int[] teste2;
        System.out.printf("%5s  %12s %12s%n","Comp.","Select(ms)","Bubble(ms)");
        for (int size = 100; size <= 100000; size = size*10) {
            teste2 = gerarArray(size);
	    teste  = new int[size];
	    System.arraycopy(teste2, 0, teste, 0, size);
            t1 = System.nanoTime();
            selectSort(teste);
            t2 = System.nanoTime();
           
	    System.arraycopy(teste2, 0, teste, 0, size); //para ordenar o mesmo array
            t3 = System.nanoTime();
            bubbleSort(teste);
            t4 = System.nanoTime();
            System.out.printf("%6d %,12d %,12d%n",size,(t2-t1)/1000,(t4-t3)/1000);
        }
    }

    // ordena por ordem decrescente / crescente
    public static void selectSort(int a[]) {
        for(int i = 0 ; i < a.length -1 ; i++) {
            for(int j = i+1 ; j < a.length ; j++) {
                if(a[i] > a[j]) {   // < ordem decrescente; > crescente
                    swap(a, i, j);
                }
            }
        }
    }
    // ordena por ordem crescente
    public static void bubbleSort(int a[]) {
        boolean troca;
        int nord = 0; // número de valores da lista ordenada
        do {
            troca = false;
            for(int i = 0 ; i <= a.length - 2 - nord; i++) {
                if(a[i] > a[i+1]) {
                    swap(a, i, i+1);
                    troca=true;
                }
            }
            nord++;  // +1 valor ordenado, que fica no fim da lista
        } while(troca);
    }

    public static void swap(int a[], int i, int j) {
        int tmp;
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }

    public static void printArray(int a[]) {
        for(int i = 0 ; i < a.length ; i++) {
            System.out.printf("%d\n", a[i]);
        }
    }

    public static void readArrayFromFile(int a[], String name)throws IOException{
        File f = new File(name);
        Scanner sc = new Scanner(f);
        for(int i = 0 ; i < a.length ; i++) {
            a[i] = sc.nextInt();
        }
    }

    public static int fileSize(String name)throws IOException{
        int n=-1; //file não existe
        File f = new File(name);
        if (f.exists()) {
            Scanner sc = new Scanner(f);
            n = 0;
            while(sc.hasNextInt()) {
                n++;
                sc.nextInt();
            }
            sc.close();
        }
        return n;
    }
    // gera array aleatoriamente
    public static int[] gerarArray(int tamanho ) {
        int[] a = new int[tamanho];
        for(int i = 0 ; i < a.length ; i++) {
            a[i] = (int)(Math.random()*(100));
        }
        return a;
    }
}
