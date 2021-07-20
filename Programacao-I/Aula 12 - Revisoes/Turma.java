/* JAM, dez 2018
 * Revisão sobre arrays, classes, ficheiros texto e ordenação (devolve array de indices ordenados)
 * Interação com o utilizador utilizando um menu.
*/
import java.util.Scanner;
import java.io.*;

public class Turma {
    static Scanner kb = new Scanner(System.in);

    public static void main(String[] args) throws IOException{
        int op, oc;
        Aluno[] t =     new Aluno[100];
        int[] id =      new int[100];
        int[] inum =    new int[100];
        int[] inome =   new int[100];
        int[] it2 =     new int[100];
        int n = 0; // começamos considerando o array vazio
        double med;
        do{
            // mostrar opcoes
            System.out.print("\n1- Ler Ficheiro \n2- Listar Alunos e Notas Finais "
            + "\n3- Escrever Ficheiro \n4- Listagens Ordenadas "
            + "\n5- Ordenar \n6- Procurar ...\n0- FIM \nOpcao ->");
            op = kb.nextInt();
            kb.nextLine();
            switch (op) {
            case 1:
                n = lerFich(t);
                id = new int[n];
                for (int j=0; j<n; j++)id[j]=j;     // cria indice por ordem de entrada
                inum  = bubbleSort4(t,n,2);         // cria indice por numero
                inome = bubbleSort4(t,n,1);         // cria indice por nome
                it2 = bubbleSort4(t,n,3);           // cria indice por t2 - decrescente
                break;
            case 2: // Lista alunos e notas finais
                listarAlunos(t, n,id);
                break;
            case 3:
                System.out.print("Escreve ordenado por [1-nome, 2-numero, 3- teste 2]: ");
                oc= kb.nextInt();
                if (oc == 1)escreverFich(t, n,inome);
                if (oc == 2)escreverFich(t, n,inum);
                if (oc == 3)escreverFich(t, n,it2);
                break;
            case 4:
                System.out.print("Lista ordenada por [1-nome, 2-numero, 3- teste 2]: ");
                oc= kb.nextInt();
                if (oc == 1)listarAlunos(t, n,inome);
                if (oc == 2)listarAlunos(t, n,inum);
                if (oc == 3)listarAlunos(t, n,it2);
                break;
            case 5:
                System.out.print("Ordenar [1-nome, 2-numero]: ");
                int nuno = kb.nextInt();
                bubbleSort(t, n, nuno);
            case 6: // Procura alunos ....
                System.out.print("Procurar nome: ");
                String padrao = kb.nextLine();
                procurarAlunos(t, n,id, padrao);
                break;
            case 0:
                System.out.println("fim do programa");
                break;
            default:
                System.out.println("Opção invalida!");
            }
        } while(op != 0); // termina o programa com a opção 10

    }
    // procurar alunos pelo nome
    public static void procurarAlunos(Aluno a[], int nElem, int[] ind, String procurar) {
        String linha;

        System.out.printf("\nNum   Nome      T1    T2    Final\n");
        for(int i = 0 ; i < nElem ; i++) { // percorremos todos os elementos armazenados no array
            linha = String.format("%-4d %-10s %4.1f  %4.1f  %4.1f\n", a[ind[i]].num,a[ind[i]].nome,
                              a[ind[i]].t1,a[ind[i]].t2,(a[ind[i]].t1+a[ind[i]].t2)/2.);
            if(linha.indexOf(procurar,4) > 0 )System.out.println(linha);
        }
    }

    public static void listarAlunos(Aluno a[], int nElem, int[] ind) {
        System.out.printf("\nNum   Nome      T1    T2    Final\n");
        for(int i = 0 ; i < nElem ; i++) { // percorremos todos os elementos armazenados no array
            System.out.printf("%-4d %-10s %4.1f  %4.1f  %4.1f\n", a[ind[i]].num,a[ind[i]].nome,
                              a[ind[i]].t1,a[ind[i]].t2,(a[ind[i]].t1+a[ind[i]].t2)/2.);
        }
    }


    public static void escreverFich(Aluno a[], int nElem, int[] ind) throws IOException {
        // Acesso a ficheiros para escrita: String -> File -> PrintWriter
        String nome = new String();
        System.out.print("Nome do ficheiro escrita: ");
        do {
            nome = kb.nextLine();
        } while(nome.isEmpty());
        File f = new File(nome);
        PrintWriter pw = new PrintWriter(f);

        for(int i = 0 ; i < nElem ; i++) {
            pw.printf("%4d %-10s  %4.1f   %4.1f\n", a[ind[i]].num,
            a[ind[i]].nome, a[ind[i]].t1, a[ind[i]].t2);
        }
        pw.close();
    }

    public static int lerFich(Aluno a[])throws IOException {
        // Acesso a ficheiros para leitura: String -> File -> Scanner
        int pos = 0;
        String nome = new String();
        System.out.print("Nome do ficheiro leitura: ");
        do {
            nome = kb.nextLine();
        } while(nome.isEmpty());
        File f = new File(nome);
        Scanner sc = new Scanner(f);
        while(sc.hasNext() && pos < a.length) { // enquanto houver valores para ler
            a[pos] = new Aluno();
            a[pos].num = sc.nextInt(); // numero
            a[pos].nome="";
            while (!sc.hasNextDouble())
                a[pos].nome += ' '+sc.next(); // lê várias palavras do nome
            a[pos].t1 = sc.nextDouble();
            a[pos].t2 = sc.nextDouble();
            pos++;
        }
        sc.close();
        return pos;
    }

    // ordena array de  Classe Aluno
// 2º parâmetro campo =1 ordena pelo nome; = 2 ordena pelo nº
    public static void bubbleSort(Aluno a[], int nAlunos, int campo) {
        boolean troca;
        int nOrd = 0;
        do {
            troca = false;
            for(int i = 0 ; i <= nAlunos- 2 - nOrd; i++) {
                switch (campo) {
                case 1:
                    if(a[i].nome.compareToIgnoreCase(a[i+1].nome) > 0) {
                        swap(a, i, i+1);
                        troca = true;
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
            nOrd++;
        } while(troca);
    }

    public static void swap(Aluno a[], int i, int j) {
        Aluno tmp = new Aluno();
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// fim - ordenação Classe Aluno
    public static void swap(int a[], int i, int j) {
        int tmp;
        tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
// ordenação - retorna índice ordenado
// 2º parâmetro campo =1 ordena pelo nome; = 2 ordena pelo nº; = 3 pelo t2 decres.
    public static int[] bubbleSort4(Aluno a[], int nAlunos, int campo) {
        int[] ord = new int [nAlunos];
        for (int i=0; i<ord.length; i++)ord[i]=i;
        boolean troca;
        int nOrd=0;
        do {
            troca=false;
            for(int i = 0 ; i <= nAlunos- 2 - nOrd; i++) {
                switch (campo) {
                case 1: // ordena pelo nome - crescente
                    if(a[ord[i]].nome.compareToIgnoreCase(a[ord[i+1]].nome) > 0) {
                        swap(ord, i, i+1);
                        troca=true;
                    }
                    break;
                case 2: // ordena pelo numero - crescente
                    if(a[ord[i]].num > a[ord[i+1]].num) {
                        swap(ord, i, i+1);
                       troca=true;
                    }
                    break;
                case 3: // ordena pelo teste 2 - decrescente
                    if(a[ord[i]].t2 < a[ord[i+1]].t2) {
                        swap(ord, i, i+1);
                        troca=true;
                    }
                    break;
                }
            }
            nOrd++;
        } while(troca);
        return ord;
    }

}
class Aluno {
    int num;
    String nome;
    double t1,t2;
}
