/**
 * Exercicio HanoiTowers a funcionar com a propria main e com o SolveHanoi
 **/
import static java.lang.System.*;
import java.util.Scanner;
import p2utils.Stack;

public class HanoiTowers {
	static Scanner ler = new Scanner(System.in);
	
	public static void main (String[] args){
		out.print("Números de discos: ");
		HanoiTowers th = new HanoiTowers(ler.nextInt());
		ler.nextLine();
		th.print();
		th.moverDiscos();
	}
	
	Stack<Integer> A = new Stack<>();
	Stack<Integer> B = new Stack<>();
	Stack<Integer> C = new Stack<>();
	
	private int nMoves = 0;
	
	public HanoiTowers (int n) {
		for (int i = n; i >= 1; i--) {
			A.push(i);
		}
	}
	
	public void print(){
		out.println("After " + (nMoves++) + " moves:");
		out.println("A:" + A.reverseString());
		out.println("B:" + B.reverseString());
		out.println("C:" + C.reverseString());
	}
	
	public void moverDiscos() {
		moverDiscos(A.size(), A, B, C);
	}
	
	public void moverDiscos(int n, Stack<Integer> TO, Stack<Integer> TD, Stack<Integer> Taux){
		assert n >= 0;
		if (n > 0) {	
			moverDiscos(n - 1, TO, Taux, TD);
			TD.push(TO.top());
			TO.pop();
			print();
			moverDiscos(n - 1, Taux, TD, TO);
		}
	}
	
	public int numberOfMoves() {
		return nMoves;
	}
	
	public void solve() {
		moverDiscos();
	}
}
