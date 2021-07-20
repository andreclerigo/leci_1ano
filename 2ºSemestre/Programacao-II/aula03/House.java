public class House{
	private String tipoDeCasa;
	private int size;
	private int maxSize;
	private int iteracao;
	private Room[] divisoes = new Room[1000];
	
	public House(String type){
		if (type == "house" || type == "House"){
			this.tipoDeCasa = type;
			this.size = 0;
			this.maxSize = 0;
			this.iteracao = 4;
		}else if (type == "apartment" || type == "Apartment"){
			this.tipoDeCasa = type;
			this.size = 0;
			this.maxSize = 0;
			this.iteracao = 4;
		}else {
			System.out.println("Tipo de divisão inválido!");
			System.exit(1);
		}
	}
	
	public House(String type, int nDiv, int iteracao){
		if(nDiv >= 0){
			this.maxSize = nDiv;
		}else {
			System.out.println("Número de divisão inválido!");
			System.exit(2);
		}
		if(iteracao >= 0){
			this.iteracao = iteracao;
		}else {
			System.out.println("Número de divisões extra inválido");
			System.exit(2);
		}
		
		if (type == "house" || type == "House"){
			this.tipoDeCasa = type;
			this.size = 0;
		}else if (type == "apartment" || type == "Apartment"){
			this.tipoDeCasa = type;
			this.size = 0;
		}else {
			System.out.println("Tipo de divisão inválido!");
			System.exit(1);
		}
	}
	
	public int size(){
		return size;
	}
	
	public int maxSize(){
		if(this.size == this.maxSize){
			this.maxSize = this.maxSize + this.iteracao;
		}
		return maxSize;
	}
	
	public int iteracao(){
		return iteracao;
	}
	
	public String tipoDeCasa(){
		return tipoDeCasa;
	}
	
	public void addRoom(Room newRoom){
		this.divisoes[size] = newRoom;
		this.size++;
	}
	
	public void room(int indice){
		if (indice < 0 || indice > size()) System.exit(3);
		System.out.println(this.divisoes[indice].roomType());
	}
	
	public double area(){
		double areah = 0;
		for(int i = 0; i < this.maxSize; i++){
			areah = areah + this.divisoes[i].area();
		}
		return areah;
	}
	
	public double averageRoomDistance(){
		double media = 0;
		for (int i = 0; i < this.size-1; i++){
			media = media + this.divisoes[i].geomCenter().distTo(this.divisoes[i+1].geomCenter());
		}
		return media;
	}
}
