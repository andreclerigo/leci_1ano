import java.util.Scanner;
/* JAM, 28-nov-2019
 * Cifra uma frase de letras minúsculas, deslocando 3 carateres para a direita
 */
public class Cifrar {
    
    public static void main(String []args) {
	Scanner ler = new Scanner(System.in);
	
        char letra = 'z', novaLetra='a';
        int pos, novaPos=0;
        String s1 = new String();
        String s2 = new String();
        s1 = ler.nextLine();
        for (int i=0; i < s1.length(); i++) {
            letra = s1.charAt(i);
            novaLetra = letra; 			// mantem letra se não for minúscula
            if(Character.isLowerCase(letra)) {
                pos = (letra - 'a'); 		// posição relativa de letra
                novaPos = (pos + 3) % 26;	// deslocamento circular
                novaLetra = (char)('a' + novaPos); // nova letra...
            }
            s2 = s2 + novaLetra;
        }

        System.out.printf("%s\n%s\n", s1,s2);
        System.out.printf("%s\n", DesCifra(s2));

    }
    // desCifra uma frase de letras minúsculas, deslocando 3 carateres para a esquerda
    public static String DesCifra(String c) {
        char letra = 'z', novaLetra='a';
        int pos, novaPos=0;
        String s2 = new String();
        for (int i=0; i < c.length(); i++) {
            letra = c.charAt(i);
            novaLetra = letra;  // mantem letra se não for minúscula
            if(Character.isLowerCase(letra)) {
                pos = (letra - 'a'); // posição relativa de letra
                novaPos = (pos - 3) % 26; // deslocamento circular
                if (novaPos <0) novaPos = 26 + novaPos; // < que 'a' passa para 'z'
                novaLetra = (char)('a' + novaPos); // nova letra...
            }
            s2 = s2 + novaLetra;
        }
        return s2;
    }
}
