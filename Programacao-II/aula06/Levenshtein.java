import static java.lang.System.*;

public class Levenshtein
{
  public static void main(String[] args) {
    //~ out.println(min(3,22,4));
    if (args.length != 2) {
      out.println("Uso: java -ea Levenshtein <palavra1> <palavra2>");
      exit(1);
    }

    int d = distancia(args[0], args[1]);
    out.printf("\"%s\" <-> \"%s\" = %d\n", args[0], args[1], d);
  }
  static int distancia(String p1, String p2){
	assert p1 != null && p2 != null;
	
	//~ char c2 = p2.charAt(0);
	//~ char c1 = p1.charAt(0);
	//~ String s1 = p1.substring(1);
	//~ String s2 = p2.substring(1);
	if(p2.length() == 0){
		return p1.length();
	}else if(p1.length() == 0){
		return p2.length();
	} else if(p1.charAt(0) == p2.charAt(0)){
		return distancia(p1.substring(1), p2.substring(1));
	} else {
	     
	     return 1 + min(distancia(p1.substring(1), p2), distancia(p1, p2.substring(1)),  distancia(p1.substring(1), p2.substring(1)));
	}
  }

  public static int min(int a, int b, int c){
	  int min = a;
	  if(b < min){
		  min = b;
	  }
	  if (c < min){
		  min = c;
	  }
	  
	  return min;
  }
}
