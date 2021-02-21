public class Tarefa {
	private Data inicio, fim;
	private String texto;
	
	public Tarefa (Data ini, Data fim, String str){
		assert str != "": "Nome de tarefa inválido";
		assert ini.compareTo(fim) < 0: "Data inválida";
		this.inicio = ini;
		this.fim = fim;
		this.texto = str;
	}
	public Data inicio(){
		return inicio;
	}
	
	public Data fim(){
		return fim;
	}
	
	public String texto(){
		return texto;
	}
	
	public String toString(){
		String str = this.inicio.toString() + " --- " + this.fim.toString()+ ": "+ texto;
		
		return str;
	}
	
	public boolean intersecta(Tarefa t2){
		if (!(this.inicio().compareTo(t2.fim()) > 0 || this.fim().compareTo(t2.inicio()) < 0)){
			return true;
		} else {
			return false;
		}
	}
}
