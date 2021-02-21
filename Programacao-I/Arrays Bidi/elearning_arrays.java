import java.util.*;

public class elearning_arrays{
	public static void main (String[] args){
	
    int a[] = {10, 20, 30, 60, 90};

    int e = 0, f = 0;



    System.out.printf("%d\n", a.length);

    

    for(int i = 0; i < a.length; i++) {

      e += a[i];

      if(e > 50){

        break;

      }

    }

    

    System.out.printf("%d\n", e);

    

    for(int i = 0; i < a.length; i++) {

      if(a[i] >= e){

        f++;

      }

    }



    System.out.printf("%d\n", f);

  }

}
