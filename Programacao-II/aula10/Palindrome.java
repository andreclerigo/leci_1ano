import p2utils.*;

public class Palindrome{
	public static void main (String[] args){
		Stack<Character> stack = new Stack<>();
		Queue<Character> queue = new Queue<>();
		
		if (args.length != 1){
			System.out.println("Necessita um unico argumento");
			System.exit(1);
		}
		String text = args[0];
		
		for (int i = 0; i < text.length(); i++) {
			char c = text.charAt(i);
			if (Character.isLetterOrDigit(c)){
				c = Character.toLowerCase(c);
				stack.push(c);
				queue.in(c);
			}
		}
		
		boolean isPalindrome = true;
		
		for (int i = 0; isPalindrome && i < stack.size(); i++) {
			isPalindrome = stack.top() == queue.peek();
			stack.pop();
			queue.out();
		}
		
		if (isPalindrome){
			System.out.println("Text " + args[0] + " is a palindrome!");
		} else {
			System.out.println("Text " + args[0] + " is not a palindrome!");
		}
	}
}
