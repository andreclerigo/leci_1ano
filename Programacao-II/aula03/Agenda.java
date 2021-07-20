public class Agenda{
	private Tarefa[] tasks = new Tarefa [1000];
	private int numero=0;
	
	public Agenda(){
		this.tasks = tasks;
		this.numero = numero;
	}
	
	public Tarefa[] tasks(){
		return tasks;
	}
	
	public int numero(){
		return numero;
	}
	
	public void novaTarefa(Tarefa task){
		
		this.tasks[this.numero] = task;
		this.numero++;
		
	}
	
	public void sortAgenda(){          
		//Sera que é necessário criar esta funcao? Era possivel usar o sort de SortDates1.java?
		for(int i = 0; i < (this.numero); i++){
			for(int j = 1; j < (this.numero)-i; j++){
				if(this.tasks[j-1].inicio().compareTo(this.tasks[j].inicio()) > 0){
					Tarefa temp = this.tasks[j-1];
					this.tasks[j-1] = this.tasks[j];
					this.tasks[j] = temp;	
				}
			}
		
		}
	}
	
	public void escreve(){
		System.out.println("Agenda:");
		sortAgenda();
		for (int i = 0; i < this.numero; i++){
			if (tasks[i] == null) continue;
			System.out.println(tasks[i].toString());
		}
	}
	
	public Agenda filtra(Data d1, Data d2){
		Agenda nova = new Agenda();
		Tarefa filtragem = new Tarefa (d1, d2, "filtro");
		
		for (int i = 0; i < this.numero; i++){
			if (this.tasks[i].intersecta(filtragem)){
				nova.novaTarefa(this.tasks[i]);
			}
		}
		return nova;
	}
}
