/*	Aula 6, Arrays 2 dimensões
 *  JAM, 31-out-2019
 *
 *  Ler/gerar notas de 0 a 20 de 2 avaliações de um aluno
 *  dados para cada aluno: id aluno, teste 1,teste 2
*/
import java.util.Scanner;
public class Turma {

    static Scanner ler = new Scanner(System.in);

    public static void main(String[] args) {

        final int NALUNOS = 3;
        // define ARRAY de 2 DIMENSOES (linhas  = alunos; 
        //	colunas = dados de um aluno -[0] id;[1] teste1;[2] teste2)
        int[][] turma= new int[NALUNOS][3];
        
        int id, soma=0, num=0;
        float media;

        System.out.println("TURMA: 1- Ler do teclado; 2-gerar aut.");
        if ( ler.nextInt() == 1) {
            num = lerTurma(turma);
        } else {
            turma = gerarTurma(10);
            num = turma.length;
        }
        imprimirTurma(turma,num);
    }
    /* Função para ler uma turma de alunos do teclado; 
     * 	Parâmetros: int[][] t - array 2d para a turma
     *  Retorna:	inteiro - nº de alunos lido
     */
    static int lerTurma(int[][] t) {
        int nalunos=0;
        System.out.println("Introduza as notas dos alunos (ID = 0 termina):");
        System.out.printf("ID do aluno: ");
        int id = ler.nextInt();
        while (id > 0 && nalunos <t.length) {
            t[nalunos][0]=id;
            System.out.printf("Nota T1:");
            t[nalunos][1] = ler.nextInt();
            System.out.printf("Nota T2:");
            t[nalunos][2] = ler.nextInt();

            nalunos++;
            System.out.printf("ID do aluno: ");
            id = ler.nextInt();
        }
        return nalunos;
    }
    /* Função para gerar uma turma automaticamente
     * 	Parâmetros:int alunos - nº de alunos a gerar
     *  Retorna:   int[][] - array 2d com a turma
     */
    static int[][] gerarTurma(int nalunos) {
        int[][] t = new int[nalunos][3];
        int n = 0;

        while (n <t.length) {
            t[n][0] = 10000 + (int)(Math.random()*100);
            t[n][1] = (int)(Math.random()*21);
            t[n][2] = (int)(Math.random()*21);
            n++;
        }
        return t;
    }
    /* Função para listar no ecrã uma turma
     * 	Parâmetros: int[][] t - array 2d com a turma
     * 				int n - nº de alunos a listar
     */
    static void imprimirTurma(int[][] t, int n) {
        if (n < 0 || n > t.length)n = t.length;	//Testa limites array
        System.out.println("   ID   T1   T2   Final");
        for (int a = 0; a < n; a++) {
            for (int c = 0; c < t[a].length; c++)System.out.printf("%5d",t[a][c]);
            System.out.printf("  %6.2f\n",(t[a][1]+t[a][2])/2.0);
        }
        System.out.printf("\nmedia  %4.1f %4.1f \n",media(t,1,n), media(t,2,n));
    }
    /* Função para calcular a média de uma dada nota da turma
     * 	Parâmetros: int[][] tabela - array 2d com a turma
     * 				int c - nº da coluna com a nota a calcular
     * 				int nl - nº de alunos 
     *  Retorna:	float - média da coluna c
     */
    static float media (int[][] tabela, int c, int nl) {
        if (nl < 0 || nl > tabela.length)nl = tabela.length;//Testa limites array
        int soma=0;
        for (int n=0; n<nl; n++) {
            soma = soma + tabela[n][c];
        }
        return (float)soma/nl;
    }
}


