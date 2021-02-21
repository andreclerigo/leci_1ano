package p2utils;

public class LinkedListInt{
	private NodeInt first = null;
	private NodeInt last = null;
	private int size = 0;
	
	public boolean isEmpty(){
		return size == 0;
	}
	
	public int first(){
		//assert !isEmpty(): "empty!";
		return first.elem;
	}
	
	public int size(){
		return size;
	}
	
	public int last(){
		//assert !isEmpty(): "empty!";
		return last.elem;
	}
	
	public void addFirst(int e){
		NodeInt n = new NodeInt(e);
		if (isEmpty()){
			last = n;
		}else{
			n.next = first;
		}
		first = n;
		size++;
	}
	
	public void addLast(int e){
		NodeInt n = new NodeInt(e);
		if (isEmpty()){
			first = n;
		}else{
			last.next = n;
		}
		last = n;
		size++;
	}
	
	public void removeFirst(){
		//assert !isEmpty(): "empty!";
		first = first.next;
		size--;
		
		if(size == 0){
			last = null;   // last = first;
		}
	}
	
	public String toString(){
		String str = "";
		
		return str;
	}
}
