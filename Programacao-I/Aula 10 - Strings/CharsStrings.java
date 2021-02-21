/* JAM, 28-nov-2019
 * Exemplos das Classes Character e String
 */
import java.util.Scanner;

public class CharsStrings {

    public static void main(String []args) {
        Scanner kb = new Scanner(System.in);

        // teste se letra e´ minúscula usando função própria

        System.out.print("Letra: ");
        char letra = nextChar();
        System.out.printf("%c é minuscula: %b%n", letra, isMinuscula(letra));

        // utlizando a classe Character
        // conta maiúsculas e minúsculas
        int min = 0, mai = 0;
        String s;

        System.out.print("frase: ");
        s = kb.nextLine();

        for(int pos = 0 ; pos < s.length() ; pos++) {
            char letra2 = s.charAt(pos);

            if(Character.isLowerCase(letra2)) {
                min++;
            } else if(Character.isUpperCase(letra2)) {
                mai++;
            }
        }
        System.out.println("Minusculas: " + min);
        System.out.println("Maiusculas: " + mai);

        // converte caracter para minúscula
        System.out.println(Character.toLowerCase('A'));

        // compara strings
        String s1 = new String();
        String s2;
        System.out.println("Compara frases (fim):");
        
        System.out.print("texto 1: ");
        s1 = kb.nextLine();
        // atenção que ==, <, > ... não funcionam com strings!
	while(!s1.equalsIgnoreCase("fim")) {
            System.out.print("texto 2: ");
            s2 = kb.nextLine();
            if(s1.compareToIgnoreCase(s2) > 0) {
                System.out.println("o texto 1 é maior que o texto 2!\n");
            } else if(s1.compareToIgnoreCase(s2) < 0) {
                System.out.println("o texto 1 é menor que o texto 2!\n");
            } else {
                System.out.println("os textos são iguais!\n");
            }
            System.out.print("texto 1: ");
            s1 = kb.nextLine();
        }
    }
    // Ler um caracter - 1º de uma linha
    public static char nextChar() {
        Scanner kb = new Scanner(System.in);
        String s = new String();

        do {
            s = kb.nextLine();
        } while (s.length() == 0); // evita linhas vazias

        return s.charAt(0);
    }
    // teste de letra é minuscula
    public static boolean isMinuscula(char letra) {
        boolean minuscula = false;

        if (letra >= 'a' && letra <= 'z') {
            minuscula = true;
        }
        return minuscula;
    }
}
