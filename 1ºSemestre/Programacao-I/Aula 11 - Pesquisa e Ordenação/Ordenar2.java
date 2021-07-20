/* JAM, 3-dez-18
 * Lê números inteiros de um ficheiro, ordena e procura valor
 * Implementa funcções de ordenação para reais, strings, registos/classes  ... overloading
 *  Ordenação do índice - permite vários índices de ordenação referentes a campos diferentes
 */
import java.util.*;
import java.io.*;

public class Ordenar2 {
    public static void main(String[] args) throws IOException{
        Scanner kb = new Scanner(System.in);

        String name = new String();
        System.out.print("File name: ");
        name = kb.nextLine();
        int n = fileSize(name);
        System.out.println("The file has " + n + " numbers");
        int a[] = new int[n];
        readArrayFromFile(a, name);
        bubbleSort(a);
        System.out.println("Ascending order: ");
        printArray(a);
        selectSort(a);
        System.out.println("Descending order: ");
        printArray(a);

// testa ordenação reais
        System.out.println("\nOrdenacao Reais");
        double[] r = {1.2, 33.4, 4.0, 2.4, 11};
        bubbleSort(r);
        System.out.println(Arrays.toString(r));
// testa ordenação strings
        System.out.println("\nOrdenacao Strings");
        String[] s = {"porto","aveiro","maia"};
        bubbleSort(s);
        System.out.println(Arrays.toString(s));
// testa ordenação strings pelo índice
        System.out.println("\nOrdenacao Strings - cria indice");
        String[] s1={"red","blue","green"};
        int[] is = bubbleSort2(s1);
        for (int id:is)System.out.printf("%s ",s1[id]);
// testa ordenação de um registo/classe
        System.out.println("\n\nOrdenacao Registos/Classes");
        Aluno[] al = new Aluno[3];
        al[0] = new Aluno();al[0].num=1;al[0].nome="ze";al[0].nota=11.5;
        al[1] = new Aluno();al[1].num=3;al[1].nome="manel";al[1].nota=12.8;
        al[2] = new Aluno();al[2].num=2;al[2].nome="alda";al[2].nota=15;
        for (int k=0; k<al.length; k++)
            System.out.printf("%3d %-10s %4.1f\n",al[k].num,al[k].nome,al[k].nota);
        System.out.println("\nOrdenacao pelo nome ...");
        bubbleSort(al,1); // 2º parâmetro =1 ordena pelo nome; = 2 ordena pelo nº
        for (int k=0; k<al.length; k++)
            System.out.printf("%3d %-10s %4.1f\n",al[k].num,al[k].nome,al[k].nota);
        System.out.println("\nOrdenacao pelo numero ...");
        bubbleSort(al,2); // 2º parâmetro =1 ordena pelo nome; = 2 ordena pelo nº
        for (int k=0; k<al.length; k++)
            System.out.printf("%3d %-10s %4.1f\n",al[k].num,al[k].nome,al[k].nota);
    }

    public static void selectSort(int a[]) {
        for(int i = 0 ; i < a.length -1 ; i++) {
            for(int j = i+1 ; j < a.length ; j++) {
                if(a[i] < a[j]) {
                    swap(a, i, j);
                }
            }
        }
    }
// ordena array de inteiros
    public static void bubbleSort(int a[]) {
        boolean  troca;
        int nord=0;
        do {
            troca=false;
            for(int i = 0 ; i <= a.length - 2-nord; i++) {
                if(a[i] > a[i+1]) {
                    swap(a, i, i+1);
                    troca=true;
                }
            }
            nord++;
        } while(troca);
    }

    public static void swap(int a[], int i, int j) {
        int tmp;
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// ordena array de reais
    public static void bubbleSort(double a[]) {
        boolean troca;
        int nord=0;
        do {
            troca=false;
            for(int i = 0 ; i <= a.length - 2-nord; i++) {
                if(a[i] > a[i+1]) {
                    swap(a, i, i+1);
                    troca=true;
                }
            }
            nord++;
        } while(troca);
    }

    public static void swap(double a[], int i, int j) {
        double tmp;
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// fim - ordenação reais

// ordena array de strings
    public static void bubbleSort(String a[]) {
        boolean troca;
        int nord=0;
        do {
            troca = false;
            for(int i = 0 ; i <= a.length - 2-nord; i++) {
                if(a[i].compareToIgnoreCase(a[i+1]) > 0) {
                    swap(a, i, i+1);
                    troca=true;
                }
            }
            nord++;
        } while(troca);
    }

    public static void swap(String a[], int i, int j) {
        String tmp = new String();
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// fim - ordenação strings

// ordena array de  Classe Aluno
// 2º parâmetro campo =1 ordena pelo nome; = 2 ordena pelo nº
    public static void bubbleSort(Aluno a[], int campo) {
        boolean troca;
        int nord=0;
        do {
            troca=false;
            for(int i = 0 ; i <= a.length - 2-nord; i++) {
                switch (campo) {
                case 1:
                    if(a[i].nome.compareToIgnoreCase(a[i+1].nome) > 0) {
                        swap(a, i, i+1);
                        troca=true;
                    }
                    break;
                case 2:
                    if(a[i].num > a[i+1].num) {
                        swap(a, i, i+1);
                        troca=true;
                    }
                    break;
                }
            }
            nord++;
        } while(troca);
    }

    public static void swap(Aluno a[], int i, int j) {
        Aluno tmp = new Aluno();
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// fim - ordenação Classe Aluno

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

        File f = new File(name);
        Scanner sc = new Scanner(f);
        int n = 0;
        while(sc.hasNextInt()) {
            n++;
            sc.nextInt();
        }
        sc.close();

        return n;
    }
 // ordena array de strings -- devolve indice de inteiros
    public static int[]  bubbleSort2(String a[]) {
        int[] ord = new int [a.length];         //cria array indice
        for (int i=0;i<ord.length;i++)ord[i]=i; //preenche com indices; 0,1,2,...
        int nord=0;
        boolean troca;
        do {
            troca=false;
            for(int i = 0 ; i <= a.length - 2-nord; i++) {
                if(a[ord[i]].compareToIgnoreCase(a[ord[i+1]]) < 0) { //<0 decrescente; >0 crescente
                    swap(ord, i, i+1);
                    troca=true;
                }
            }
            nord++;
        } while(troca);
        return ord;
    }
}
// fim - ordenação strings -- devolve indice de inteiros
class Aluno {
    int num;
    String nome;
    double nota;
}
