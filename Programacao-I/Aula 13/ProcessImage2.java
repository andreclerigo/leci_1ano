/**
  Programa de manipulação de imagens (em formato Plain PGM).

  João Rodrigues, 2013, 2014.
  JAM, 2015, 2016, 2017, 2018
**/

import java.util.Scanner;
import java.io.*;

public class ProcessImage2 {
    static Scanner kb = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        int op;
        int [][] img = new int[2][2];
        do {
            op = Menu();
            switch (op) {
            case 1:// Carrega imagem do ficheiro para a matriz img:
                String name;
                File f;
                do {
                    System.out.print("Imagem a processar? ");
                    //~ kb.nextLine();
                    name = kb.nextLine() +".pgm";
                    f = new File(name);
                } while (!(f.isFile() && f.canRead()));
                img= loadPGM(f);
                mostrarImagem(name);
                break;
            case 2:
                System.out.printf("Gravar Imagem no Ficheiro: ");

                String nomef = kb.nextLine()+".pgm";
                f = new File(nomef);
                // Grava imagem da matriz img para ficheiro *.pgm:
                savePGM(f, img);
                mostrarImagem(nomef);
                break;
            case 3:// mostrar a imagem em formato de texto:
                printImage(img);   // (convém maximizar o terminal...)
                break;
            case 4: // roda a imagem -90 graus
                img = rodar_90(img);
                display(img);
                break;
            case 5:// zoom x 2 (repete ponto nos adjacentes)
                img = zoomx2(img);
                display(img);
                break;
            case 6:// zoom x 2 (melhorado, calcula media entre pontos adjacentes)
                img = zoomx2m(img);
                display(img);
                break;
            case 7:// zomm 50%
                img = zoom_2(img);
                display(img);
                break;
            case 8:// gráfico coseno
                int[][] graf = new int [100][400];
                //~img = grafico(graf);
                display(grafico(graf));
                break;
            case 11:// Faz o "thresholding" da imagem:
                System.out.print("Limiar (0 - 255)? "); // tentar 128...
                int thr = kb.nextInt();
                threshold(img, thr);
                display(img);
                break;
            case 12:// negativo
                negativo(img);
                display(img);
                break;
            }
        } while(op != 0); // termina o programa com a opção 0
    }
// Menu
    public static int Menu() {
        // mostrar opcoes
        System.out.print("\n1 - Ler Imagem PGM\n2 - Gravar Imagem PGM"
                         + "\n3 - Imprime Imagem ASCII\n4 - Roda Imagem -90º  "
                         + "\n5 - Zoom 200% \n6 - Zoom 200% (melhorado) "
                         + "\n7 - Zoom 50%\n8 - Grafico coseno"
                         + "\n11- Threshold \n12- Negativo "
                         + "\n0 - FIM \nOpcao ->");
        int o = kb.nextInt();
        kb.nextLine();
        return o;
    }

    // Salta comentários até próximo inteiro
    public static void skipComments(Scanner sf) {
        while (!sf.hasNextInt()) {
            String s = sf.next();
            if (s.charAt(0) != '#') {
                System.err.printf("Invalid format!\n");
                System.exit(1);
            }
            sf.nextLine(); // É comentário => descarta resto da linha
        }
    }

    // Carrega uma imagem de um ficheiro PGM ASCII (Plain PGM).
    // Ver http://netpbm.sourceforge.net/doc/pgm.html
    // BUGS:
    //   Não devolve Maximum gray value.
    //   Não aceita comentários no ficheiro.
    public static int[][] loadPGM(File f) throws IOException {
        Scanner sf = new Scanner(f);
        String s = sf.next();
        if (!s.equals("P2")) {
            System.err.printf("%s: not a plain PGM file\n", f);
            System.exit(1);
        }
        int w, h, d;
        skipComments(sf);
        w = sf.nextInt();
        skipComments(sf);
        h = sf.nextInt();
        skipComments(sf);
        d = sf.nextInt();
        int[][] image = new int[h][w];
        int x, y;
        for (y = 0; y < h; y++) {
            for (x = 0; x < w; x++) {
                image[y][x] = sf.nextInt();
            }
        }
        sf.close();
        return image;
    }

    // Guarda uma imagem num ficheiro PGM ASCII (Plain PGM).
    // Ver http://netpbm.sourceforge.net/doc/pgm.html
    // BUGS:
    //   Fixa maximum gray value = 255.
    public static void savePGM(File f, int[][] img) throws IOException {
        PrintWriter pw = new PrintWriter(f);
        pw.printf("P2\n%d %d\n%d\n", img[0].length, img.length, 255);
        int x, y;
        int h = img.length;
        for (y = 0; y < h; y++) {
            int w = img[0].length;
            for (x = 0; x < w; x++) {
                pw.printf("%d ", img[y][x]);
            }
            pw.printf("\n");
        }
        pw.close();
    }

    public static void threshold(int[][] img, int thr) {
        int x, y;
        int h = img.length;
        for (y = 0; y < h; y++) {
            int w = img[0].length;
            for (x = 0; x < w; x++) {
                img[y][x] = (img[y][x] >= thr) ? 255 : 0;
            }
        }
    }
    // faz negativo imagem
    public static void negativo(int[][] img) {
        int x, y;
        int h = img.length;
        for (y = 0; y < h; y++) {
            int w = img[0].length;
            for (x = 0; x < w; x++) {
                img[y][x] = 255-img[y][x];
            }
        }
    }
// grafico do coseno
    public static int[][] grafico(int[][] img) {
        int x, y;
        int h = img.length;
        int w = img[0].length;
        for (x= 0; x<w; x++)img[h/2][x]=128;//desenha eixos x
        for (x= 0; x<w; x++)img[h/4][x]=80;
        for (x= 0; x<w; x++)img[h/4*3][x]=80;
        for (y= 0; y<h; y++)img[y][w/2]=80;// eixos y
        for (y= 0; y<h; y++)img[y][w/4]=80;//
        for (y= 0; y<h; y++)img[y][w/4*3]=80;//
        for (y = 0; y < h; y++) {
            for (x = 0; x < w; x++) {
                img[h/2-(int)(Math.cos(x/50.)*h/4 + Math.sin(x/10.)*h/4)][x] = 255;
            }
        }
        return img;
    }
    // Tabela de símbolos para representar níveis de cinzento em AsciiArt:
    static final String scaleAA = "#@8%Oo\";,'. ";

    // Converte imagem em AsciiArt (google it!)
    // BUG: Presume max-gray-value=255!
    public static void printImage(int[][] img) {
        int x, y;
        int h = img.length;
        for (y = 0; y < h; y++) {
            int w = img[0].length;
            for (x = 0; x < w; x++) {
                int val = img[y][x] * scaleAA.length() / (255+1); // mudança de escala
                System.out.printf("%c", scaleAA.charAt(val));
            }
            System.out.println();
        }
    }
    // roda imagem -90
    public static int[][] rodar_90(int[][] i) {
        int[][] ir = new int[i[0].length][i.length];

        for (int l=0; l<i[0].length; l++)
            for (int c=0; c<i.length; c++)
                ir[l][c]=i[c][i[0].length-1-l];
        return ir;
    }
    // zoom x2 -  copia ponto para todos os adjacentes
    public static int[][] zoomx2(int[][] i) {
        int[][] ir = new int[2*i.length][2*i[0].length];

        for (int l=0; l<i.length-1; l++)
            for (int c=0; c<i[0].length-1; c++) {
                ir[2*l][2*c]=i[l][c];
                // copia ponto para todos os adjacentes
                ir[2*l][2*c+1]=i[l][c];
                ir[2*l+1][2*c]=i[l][c];
                ir[2*l+1][2*c+1]=i[l][c];
            }
        return ir;
    }
    // zoom x2 melhrado - faz média com os pontos seguintes
    public static int[][] zoomx2m(int[][] i) {
        int[][] ir = new int[2*i.length][2*i[0].length];

        for (int l=0; l<i.length-1; l++)
            for (int c=0; c<i[0].length-1; c++) {
                ir[2*l][2*c]=i[l][c];
                // faz média com os pontos seguintes
                ir[2*l][2*c+1]=(i[l][c] + i[l][c+1])/2;
                ir[2*l+1][2*c]=(i[l][c] + i[l+1][c])/2;
                ir[2*l+1][2*c+1]=(i[l][c] + i[l+1][c+1])/2;
            }
        return ir;
    }
    // zoom 50%
    public static int[][] zoom_2(int[][] i) {
        int[][] ir = new int[i.length/2][i[0].length/2];

        for (int l=0; l<ir.length; l++)
            for (int c=0; c<ir[0].length; c++) {
                ir[l][c]=(i[2*l][2*c]+i[2*l][2*c+1]+i[2*l+1][2*c]+i[2*l+1][2*c+1])/4;

            }
        return ir;
    }
    // faz o display da imagem usando o programa IrfanView
    static void mostrarImagem(String name) throws IOException{

        Runtime.getRuntime().exec("C:/Program Files (x86)/IrfanView/i_view32 " +name);
    }
    static void display(int[][] t) throws IOException{
        savePGM(new File("tmp.PGM"), t);
        mostrarImagem("tmp.PGM");
    }
}
