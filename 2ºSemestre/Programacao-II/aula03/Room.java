public class Room{
	private String tipoDivisao;
	private Point cantoIEsq, cantoSDireito, center;
	private double area;
	
	public Room(Point cantoIEsq, Point cantoSDireito, String tipoDivisao){
		this.tipoDivisao = tipoDivisao;
		this.cantoIEsq = cantoIEsq;
		this.cantoSDireito = cantoSDireito;
	}
	
	public String roomType(){
		return tipoDivisao;
	}
	
	public Point bottomLeft(){
		return cantoIEsq;
	}
	
	public Point topright(){
		return cantoSDireito;
	}
	
	public Point geomCenter(){
		center = this.cantoIEsq.halfWayTo(this.cantoSDireito);
		
		return center;
	}
	
	public double area(){
		area = (cantoIEsq.x()+cantoSDireito.x()) * (cantoIEsq.y()+cantoSDireito.y());
		return area;
	}
}
