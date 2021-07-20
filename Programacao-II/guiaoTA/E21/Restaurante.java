import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import pt.ua.p2utils.*;

public class Restaurante {
  public static void main(String[] args) {
    HashTable<Integer> stock = new HashTable<>(100);
    Queue<KeyValueList<Integer>> pedidos = new Queue<>();
    
    for (String arg : args){
		File f = new File (arg);
		processFile(f, stock, pedidos);
	}
	printStock(stock);
	
	while (!pedidos. isEmpty()){
		KeyValueList<Integer> pedido = pedidos.peek();
		out.print("Refeição pendente:");
		serveMeal(stock, pedido);
		pedidos.out();
	}
  }

  public static void processFile(File f, HashTable<Integer> stock, Queue<KeyValueList<Integer>> pedidos){
	Scanner sc = null;
	try{
		sc = new Scanner(f);
		
		while(sc.hasNextLine()){
			String Line = sc.nextLine();
			String[] parts = Line.split(": ", 2);
			
			switch(parts[0]){
				case "entrada":
					//Processar entrada
					String ingred = parts[1].trim();
					int c = 0; 
					if (stock.contains(ingred))
						c = stock.get(ingred);
					stock.set(ingred, c+1);
					break;
				case "saida":
					//Processar saida = registar pedido
					KeyValueList<Integer> pedido = new KeyValueList<>();
					String[] items = parts[1].split(" ");
					for(String item : items){
						String[] p = item.split(":");
						int v = Integer.parseInt(p[1]);
						if (p.length != 2 || pedido.contains(p[0])) {
							throw new IOException("Formato invalido2");
						}
						pedido.set(p[0], v);
					}
					pedidos.in(pedido);					
					break;
				default:
					throw new IOException("Formato Inválido");
			}
			//Verificar se podemos servir uma refeicao
			//..
			while (!pedidos.isEmpty()){
				KeyValueList<Integer> pedido = pedidos.peek();
				if (!canServeMeal(stock, pedido)) break;
				out.print("Refeição servida: ");
				serveMeal(stock, pedido);
				pedidos.out();
			}	
		}
	}catch(IOException e){
		err.println("Err: " + e.getMessage());
		exit(1);
	}finally{
		if (sc != null) sc.close();
	}
  }
  
  public static void printStock(HashTable<Integer> stock){
	System.out.println("Comida em Stock");
	String[] ingreds = stock.keys();
	for (String ingred : ingreds){
		out.printf("  %s: %d\n", ingred, stock.get(ingred));
	}
  }
  
  public static boolean canServeMeal(HashTable<Integer> stock, KeyValueList<Integer> pedido){
	String[] ingreds = pedido.keys();
	
	for (String ingred : ingreds){
		int qntstk = 0;
		if (stock.contains(ingred))
			qntstk = stock.get(ingred);
		int qnt = pedido.get(ingred);
		if (qntstk < qnt) return false;
	} 
	return true;
  }
  
  public static void serveMeal(HashTable<Integer> stock, KeyValueList<Integer> pedido){
	assert canServeMeal(stock, pedido);
	String[] ingreds = pedido.keys();
	for (String ingred : ingreds){
		int qnt = pedido.get(ingred);
		stock.set(ingred, stock.get(ingred) - qnt);
		out.printf("  %s:%d", ingred, qnt);
	}
	out.println();
  }
}

