package p2utils;

public class SortedList<E extends Comparable<E>>
{
  // private attributes
  private Node<E> first = null;
  private int size = 0;

  public SortedList() { }

  /**
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /**
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";
      return first.elem;
  }

  /** Inserts a new element in the list.
   * @param e the element to be inserted
   */
  public void insert(E e) {
    first = insert(first,e);
    size++;
  }
  private Node<E> insert(Node<E> n,E e) {
    if (n==null || e.compareTo(n.elem)<0)
      return new Node<E>(e,n);
    n.next = insert(n.next,e);
    return n;
  }

  /** Removes the first element in the list.
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    first = first.next;
    size--;
  }

  /** Checks if the list is sorted.
   * @return {@code true} if sorted, {@code false} otherwise
   */
  public boolean isSorted() { 
    if (size < 2)
      return true;
    return isSorted(first,first.next); 
  }
  private boolean isSorted(Node<E> prev, Node<E> n) {
    if (n == null) return true;
    if (n.elem.compareTo(prev.elem)<0) return false;
    return isSorted(n,n.next);
  }
  
  //contais iterativa
  public boolean contains (SortedList lst, E e){
	while(!lst.isEmpty()){
	  if(first == e){
		return true;
	  }else{
		lst.removeFirst();
	  }
	  return false;
    }
    return false;
  }
  
  //contains recursiva
  public boolean contains(E e) { 
    return contains(first,e); 
  }
  private boolean contains(Node<E> n,E e) {
    if (n == null) return false;
    if (n.elem.compareTo(e) > 0) return false;
    if (n.elem==null) return e==null; //dispensável, se impedirmos elem==null
    if (n.elem.equals(e)) return true; 
    return contains(n.next,e);
  }
  
  //Como é suposto fazer um metodo toString iterativo sem passar a lista como argumento?
  //I honestly wanna kms fuck this...
  public String toString (){
	return toString(first, "[");
  }
  
  private String toString(Node<E> n, String str){
	if (n != null){
		if (n.next == null){
			str = str + n.elem;
			return toString(n.next, str);
		}else {
			str = str + n.elem + ", ";
			return toString(n.next, str);
		}
	}
	str = str + "]";
	return str;
  }
  
  public SortedList<E> clone(){
	return clone(this.first);
  }
  
  private SortedList<E> clone(Node<E> n){
	if(n == null) return new SortedList<E>();
	SortedList<E> cloned = clone(n.next);
	cloned.insert(n.elem);
	return cloned;
  }
  
  public SortedList<E> merge (SortedList l){
	SortedList<E> lst = new SortedList<>();
	lst = l.clone();
	return merge(this.first, lst);
  }

  private SortedList<E> merge (Node<E> n, SortedList lst){
	if (n != null){
		lst.insert(n.elem);
		return merge(n.next, lst);
	}
	
	return lst;
  }
}
