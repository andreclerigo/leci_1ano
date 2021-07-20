public class MDC{
	public static void main(String [] args){
		int a = 0;
		int b = 0;
		
		try{
			a = Integer.parseInt(args[0]);
			b = Integer.parseInt(args[1]);
		}catch(Throwable e){
			System.out.println("ERROR: unable to convert to an integer!");
			System.exit(0);
		}
		mdc(a,b);
	}
	
	public static void mdc(int a, int b){
		if(b == 0){
			System.out.println(a);
		}else{
			mdc(b, a%b);
		}
	}
}
