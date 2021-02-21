public class Loan{
	public static void main (String [] args){
		double M = 0;
		double T = 0;
		double n = 0;
		double P = 0;
		if (args.length != 2) {
			System.out.println("Uso: java -ea Levenshtein <palavra1> <palavra2>");
			System.exit(1);
		}
		try{
			n = Double.parseDouble(args[0]);
			M = Double.parseDouble(args[1]);
			T = Double.parseDouble(args[2]);
			P = Double.parseDouble(args[3]);
		}catch (Throwable e){
			System.out.println("ERROR: Please insert valid values!");
			System.exit(0);
		}
		
		double Divida = (M * (1 + T/100) - P); //Divida para 1 mes
		System.out.println(Divida);
	}
}
