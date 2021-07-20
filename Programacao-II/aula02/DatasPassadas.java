import static java.lang.System.*;

public class DatasPassadas {

  public static void main(String[] args) {
    Data atual = new Data();
    Data ultimoNatal = new Data (25, 12, 2019);
    
    for (int i = 0; i < 366; i++){
		System.out.printf("%s \n", ultimoNatal.extenso());
		ultimoNatal.seguinte();
		
		if (ultimoNatal.extenso().equals(atual.extenso())){
			break;
		}
	}
  }

}

