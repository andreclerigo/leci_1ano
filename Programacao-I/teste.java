import java.util.Scanner;
public class teste{
public static void main(String[] args){

    Scanner sc = new Scanner(System.in);



    int p = 0, n = 0; 

    int c = sc.nextInt();

    int d = sc.nextInt();



    if (c > d){

      p = c - d;

      System.out.println("primeiro");

    }

    else{

      if (c > 0 && d > 0){

        n = c + d;

        System.out.println("segundo");

      }

      else{

        System.out.println("terceiro");

        p = -1;

        n = -1;

      }

    }



    System.out.printf("%d\n", p);

    System.out.printf("%d\n", n);

  }
}
