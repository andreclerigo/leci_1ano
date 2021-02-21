public class quiz{
	public static void main(String[] args) {
		assert reverse("hello").equals("olleh");
		assert reverse("follow").equals("wollof");
		assert reverse("x").equals("x");
		assert reverse("").equals("");
		System.out.println(reverse("Hello"));
		System.out.print("Passou teste");
	}
	public static String reverse (String s) {
		int n = s.length();
		if​ ( n <=1 ){
			return s;
		}else{
			return reverse(s.substring(n-1, n) +  s.substring(0,1)) ;
		}
	}
}


