public class Pessoa implements Comparable<Pessoa>{
	private Data nascimento;
	private String name;
	
	public String name(){
		return name;
	}
	
	public Data nascimento(){
		assert nascimento.valida();
		return nascimento;
	}
	
	public Pessoa(String n, Data d){
		nascimento = d;
		name = n;
	}
	
	public String toString(){
		String str = this.name + " nasceu em " + this.nascimento.toString();
		return str;
	}
	
	public int compareTo(Pessoa p2){
		return this.nascimento.compareTo(p2.nascimento);
	}
}

