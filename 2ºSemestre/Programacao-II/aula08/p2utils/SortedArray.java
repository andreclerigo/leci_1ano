package p2utils;

public class SortedArray<E extends Comparable<E>>{
	private E[] arr;
	private int maxSize = 0;
	private int size = 0;
	
	public SortedArray(int length){
		arr = (E[]) new Object[length];
		maxSize = arr.length;
	}
	
	public E[] arr(){
		return arr;
	}
	
	public int maxSize(){
		return maxSize;
	}
	
	public boolean isFull(){
		return size == maxSize;
	}
	
	public boolean isEmpty(){
		return size == 0;
	}
	
	public E first(){
		return arr[0];
	}
	
	//Deve estar a funcionar
	public void removeFirst() {
		assert !isEmpty(): "empty!";
		for (int i = 0; i < arr.length-1; i++){
			arr[i] = arr[i+1];
		}
		arr[arr.length] = null;
		size--;
	}
	
	//Ainda nao sei nem quero saber
	public void insert(E e) {
		int n = size;
		//assert n < length;
		while (n > 0 && (e.compareTo(arr[n-1])) < 0) {
			arr[n] = arr[n-1];
			n--;
		}
	}
	
	//Sorted deve estar a funcionar
	public boolean isSorted() { 
		if (size < 2)
			return true;
		for (int i = 0; i < arr.length-1; i++){
			if(arr[i].compareTo(arr[i+1]) > 0);
				return false;
		}
		return true;
	}
	
	//Deve funcionar
	public boolean contains (E e){
		for (int i = 0; i < arr.length; i++){
			if(arr[i] == e);
				return true;
		}
		return false;
	}
	
	//Deve funcionar
	public String toString(){
		String str = "[";
		for (int i = 0; i < arr.length; i++){
			if (i == arr.length -1 ){
				str = str + i + "]";
			}else {
				str = str + i + ", ";
			}
		}
		return str;
	}
	
	public SortedArray merge(SortedArray arr2){
		int n = 0;
		SortedArray arrComplementar = new SortedArray(this.arr.length + size);
		for (int i = 0; i < this.arr.length ; i++) {
			for (int j = 0; i < size; i++){
				if(arr2.arr[j] != this.arr[i]){
					arrComplementar.arr[n] = arr2.arr[j];
					n++;
				}
			}
		}
		
		SortedArray newArr = new SortedArray(this.arr.length + n);
		newArr.arr = arr;
		
		for (int i = 0; i < n; i++){
			if(arrComplementar.arr[n] != null){
				newArr.insert(arrComplementar.arr[n]);
			}
		}
		
		return newArr;
	}
}
