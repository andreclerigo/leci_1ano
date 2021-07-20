import p2utils.Queue;
import p2utils.HashTable;

public class SupermarketOrdering {

	private Queue<Order> supermarket; 
	private int numOrders;
	private HashTable<Integer> countProd;
	

	SupermarketOrdering() {
		supermarket = new Queue<Order>();
		countProd	= new HashTable<>(10);
		numOrders   = 0;
	}
	
	public void enterOrder(Order argOrder){	

		String name = argOrder.prodName;
		
		if (!countProd.contains(name))
			countProd.set(name, argOrder.quantity);
		
		else 
			countProd.set(name, countProd.get(name) + argOrder.quantity);
		
		supermarket.in(argOrder);
		numOrders++;
		
	}

	public Order serveOrder() {
		if (supermarket.size() == 0) 
			return new Order ("", "", 0);
		
		Order toServe = supermarket.peek();
		supermarket.out();
		
		String name = toServe.prodName;
		if (countProd.contains(name)) 
			countProd.set(name, countProd.get(name) - toServe.quantity);
		
		return toServe;
	}
	
	public int numOrders() {
		return numOrders;
	}
	

	public int query(String prodName) {
		return countProd.get(prodName);
	}
	
	public void displayOrderedProducts() {
		int tableSize = countProd.size();
		String[] keys = countProd.keys();

		for(int i = 0; i < tableSize; i++) {
			String product = keys[i];
			System.out.printf("%10s -> %10d \n", product, countProd.get(product));
		}
	}
}
