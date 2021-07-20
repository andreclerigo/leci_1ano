import java.util.Scanner;

public class Primeiro
{
  public static void main(String[] args)
  {
    // Scanner para leitura de dados do teclado
    Scanner sc = new Scanner(System.in);
    double dim1, dim2;       // Variaveis de Entrada
    double perimetro, area;  // Variaveis de Saida
    // 1) Ler os dados (sem validar, por enquanto)
    System.out.print("Dimensao 1: ");
    dim1 = sc.nextDouble();
    System.out.print("Dimensao 2: ");
    dim2 = sc.nextDouble();
    // 2) Calcular
    perimetro = 2*(dim1 + dim2);
    area = dim1 * dim2;

    // 3) Escrever os resultados
    System.out.printf("Perimetro = %4.1f, Area = %4.1f\n", perimetro, area);
  }
}
