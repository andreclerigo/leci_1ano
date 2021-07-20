import java.util.*;
public class ex0112 {
 public static void main (String args[]) {
  // Scanner para a leitura de dados
  Scanner sc = new Scanner(System.in);
  int inSeconds; 			// Variavel de entrada
  int outHours, outMinutes, outSeconds; 	// Variaveis de saida
    // Ler dados
  System.out.print("Segundos: ");
  inSeconds = sc.nextInt();
    // Calcular
  outHours 		= inSeconds / 3600;
  outMinutes 	= (inSeconds % 3600) / 60;
  outSeconds 	= (inSeconds % 3600) % 60;
  // Escrever resultados
 System.out.printf("%02d:%02d:%02d\n", outHours,outMinutes,outSeconds); }
}
