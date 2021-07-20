
import java.util.*;

public class funcaoCos {
	static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		//f: Z --> R
		//   n --> 3cos(2x+1)
		//calcular o min,max,zeros e tabela da funcao num certo intervalo
		
		System.out.print("Funcao 3cos(2x+1)\nIntervalo de x que quer analisar da funcao :\nXmin: ");
		double xmin = sc.nextDouble();
		System.out.print("Xmax: ");
		double xmax = sc.nextDouble();
		System.out.print("Qual e o valor de delta? ");
		double xdelta = sc.nextDouble();
		
		int opcao=0;
		
		do {
			int nPontos = (int)((xmax-xmin)/xdelta);
			double y[] = new double[nPontos+1];
			double x[] = new double[nPontos+1];
			double xValor=xmin;
			
			for(int i=0;i<x.length;i++) {
				if(i==0) xValor = xmin;
				else xValor += xdelta;
				x[i] = xValor;
			}
			for(int j=0;j<y.length;j++) {
				y[j] = 3*Math.cos((2*x[j])+1);
			}
			System.out.println("\n------------------------MENU--------------------------");
			System.out.println("1) Calcular o valor minimo da funcao no seu intervalo");
			System.out.println("2) Calcular o valor maximo da funcao no seu intervalo");
			System.out.println("3) Calcular os zeros da funcao no seu intervalo");
			System.out.println("4) Imprimir a tabela da funcao no seu intervalo");
			System.out.println("5) Alterar o valor x minimo da funcao");
			System.out.println("6) Alterar o valor x maximo da funcao");
			System.out.println("7) Terminar o programa");
			System.out.println("------------------------------------------------------");
			System.out.print("Opcao --> ");
			opcao = sc.nextInt();
			
			if(opcao<1 || opcao>7) {
				System.out.print("\nOpcao invalida, tente novamente\n");
			}
			switch(opcao) {
				case 1: System.out.printf("\nO valor minimo da funcao é quando y = %5.2f\n",minFuncao(y,nPontos));
						break;
				case 2: System.out.printf("\nO valor maximo da funcao é quando y = %5.2f\n",maxFuncao(y,nPontos));
						break;
				case 3: double[] raizes = zerosFuncao(x,y,xmin,nPontos);
						System.out.println();
						for(int k=1;k<nPontos;k++) {
							if(raizes[k] == raizes[k+1]) {
								break;
							}
							System.out.printf("Raiz %d: %5.2f\n",k,raizes[k]);
						}
						break;
				case 4: imprimirTabela(x,y);
						break;
				case 5: xmin = alterarXMinFuncao(xmax);
						break;
				case 6: xmax = alterarXMaxFuncao(xmin);
						break;
			}
		}while(opcao!=7);
		
		System.out.println("\nO programa esta a terminar...");
	}
	public static double minFuncao(double[] y, int nPontos) {
		double min=y[0];
		
		for(int i=0;i<nPontos;i++) {
			if(min>y[i]) {
				min = y[i];
			}
		}
		return min;
	}
	public static double maxFuncao(double[] y, int nPontos) {
		double max=y[0];
		
		for(int i=0;i<nPontos;i++) {
			if(max<y[i]) {
				max = y[i];
			}
		}
		return max;
	}
	public static double[] zerosFuncao(double[] x, double[] y, double xmin, int nPontos) {
		double y0 = 3*Math.cos((2*xmin)+1);
		double[] raizes = new double[nPontos];
		int nraizes = 0;
		
		for(int i=0;i<nPontos;i++) {
			if((y0 > 0 && y[i] < 0) || (y0 < 0 && y[i] > 0)) {
				nraizes++;
				raizes[nraizes] = x[i];
			}
			y0 = y[i];
		}
		return raizes;
	}
	public static void imprimirTabela(double[] x, double[] y) {
		System.out.println("\n--------------------");
		System.out.println("pos |   x   |  f(x) |");
		System.out.println("--------------------");
		for(int i=0;i<x.length;i++) {
			System.out.printf(" %2d | %5.2f | %5.2f |\n",i+1,x[i],y[i]);
		}
	}
	public static double alterarXMinFuncao(double xmax) {
		System.out.print("\nNovo valor xmin: ");
		double xmin = sc.nextDouble();
		while(xmin >= xmax) {
			System.out.print("O xmin tem que ser menor que o xmax: ");
			xmin = sc.nextDouble();
		}
		return xmin;
	}
	public static double alterarXMaxFuncao(double xmin) {
		System.out.print("\nNovo valor xmax: ");
		double xmax = sc.nextDouble();
		while(xmax <= xmin) {
			System.out.print("O xmax tem que ser maior que o xmin: ");
			xmax = sc.nextDouble();
		}
		return xmax;
	}
}
