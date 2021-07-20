import static java.lang.System.*;

public class reverseString {

  public static void main(String[] args) {
    printArray(args, args.length);
  }

  /** Imprime as N primeiras strings do array, uma por linha. */
  public static void printArray(String[] array, int N) {
	if (N != 0) {
		printArray(array, N-1);
		System.out.println("\"" + array[N-1] + "\" -> \"" + printString(array[N-1]) + "\"");
	}
  }
  
  public static String printString(String s){
	  int n = s.length();
	  if(n <= 1){
		  return s;
	  }else{
		  return printString(s.substring(1,n)) + s.substring(0,1);
	  }
  }
}
