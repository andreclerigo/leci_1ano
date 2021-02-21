/* JAM, 11-nov-2019
 * Exercicio 11.3 - agenda
 *
 */
import java.util.Scanner;
import java.io.*;

public class Agenda {
    public static void main(String[] args) throws IOException {
        Scanner kb = new Scanner(System.in);
        String opcao ="";

        Contacto[] agenda = new Contacto[10];
        int numContactos = 0;

        // incializar a partir de ficheiro
        numContactos = lerAgenda(agenda, numContactos, "agenda1.txt");

        do {

            System.out.println("I) inserir contacto");
            System.out.println("M) mostrar contactos");
            System.out.println("T) terminar");
            opcao = kb.nextLine().toUpperCase();
            switch(opcao) {
            case "I":
                numContactos = inserirCont(agenda, numContactos);
                break;
            case "M":
                mostrarCont (agenda, numContactos);
                break;
            case "L":
                numContactos = lerAgenda(agenda, numContactos, "agenda.txt");
                break;

            }

        } while (!opcao.equals("T"));

    }
    // inserir contacto
    static int inserirCont(Contacto[] c, int num) {
        if (num >= c.length) return num;
        c[num] = new Contacto();
        c[num].nome = "maria";
        c[num].telf =  123456;
        c[num].email = "maria@maria.com";
        return num + 1;

    }
    // mostar contactos
    static void mostrarCont(Contacto[] c, int num) {
        for (int i = 0; i < num; i++)System.out.println(contactoToString(c[i]));
    }

    // contacto To String
    static String contactoToString(Contacto c) {
        return String.format("%s %d %s",c.nome, c.telf, c.email);
    }

    // le ficheiro com Contactos - um por linha
    static int lerAgenda(Contacto[] contactos, int numC, String nome) throws IOException {
        File f = new File(nome);
        if (!f.exists())return numC;

        // abre para  leitura e preenche array de contactos
        Scanner fich = new Scanner(new File(nome));
        int i=numC;
        while(fich.hasNextLine() && i < contactos.length) {
            contactos[i] = new Contacto();
            contactos[i].nome   = fich.next();
            contactos[i].telf   = fich.nextInt();
            contactos[i].email  = fich.next();
            i++;
        }
        fich.close();
        return i;
    }
}

class Contacto {
    String nome;
    int    telf;
    String email;
}

