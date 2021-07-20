import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }
  
  public Data(String str){
	  String[] dataSeparada = str.split("-");
	  if (dataSeparada.length != 3){  //Verificar se tem tres vezes "-"
		  System.exit(1);
	  } else if (dataSeparada[0].length() != 4 || dataSeparada[1].length() != 2 || dataSeparada[2].length() != 2){  //Verificar se data tem 4digitos e se dia e/ou mes tem 2 digitos
		  System.exit(2);
	  }
	  ano = Integer.parseInt(dataSeparada[0]);
	  mes = Integer.parseInt(dataSeparada[1]);
	  dia = Integer.parseInt(dataSeparada[2]);
  }
  
  public int compareTo (Data comparacao){
	int a = this.ano - comparacao.ano;
	int b = this.mes - comparacao.mes;
	int c = this.dia - comparacao.dia;
	
	if (a != 0){
		 return a;
	} else if (b != 0){
		 return b;
	} else {
		 return c;
	}
  }
  public int dia(){
	  return dia;
  }
  
  public int mes(){
	  return mes;
  }
  
  public int ano(){
	  return ano;
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  //...

  /** Dimensões dos meses num ano comum. */
  private static final int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  private static final String[] mesNomesExtenso = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
  
  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
	int diaDoMes=0;
    if (bissexto(ano)){
		if(mes == 2){
			diaDoMes = 29;
		}else{
		diaDoMes = diasMesComum[mes-1];
		}
	}else{
		diaDoMes = diasMesComum[mes-1];
	}
    return diaDoMes;
  }

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
    String mesExtenso = mesNomesExtenso[mes-1];
    return mesExtenso;
  }


  /** Devolve esta data por extenso. */
  public String extenso() {
    String extenso = dia + " de " + mesExtenso() + " de " + ano;
    return extenso;
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
	boolean dataValida = false;
	
    if (ano > 0 && (mes > 0 && mes <13) && (dia > 0 && dia < diasMesComum[mes-1] + 1)) {
		dataValida = true;
	}else if (ano > 0 && mes == 2 && dia == 29){
		dataValida = true;
	}else {
		dataValida = false;
	}
    return dataValida;
  }

  public void seguinte() {
	if (!bissexto(ano)){
		if (dia > 0 && dia < diasMesComum[mes-1]){
			dia = dia + 1;
		} else if (mes == 12 && dia == diasMesComum[mes-1]){
			dia = 1;
			mes = 1;
			ano = ano +1;
		} else if (dia == diasMesComum[mes-1] && mes < 13){
			dia = 1;
			mes = mes + 1;
		} 	
	} else if (bissexto(ano)){
		if(mes == 2 && dia == 28){
			dia = dia + 1;
		} else if (mes == 2 && dia == 29 ){
			dia = 1;
			mes = 3;
		} else if (dia > 0 && dia < diasMesComum[mes-1]){
			dia = dia + 1;
		} else if (mes == 12 && dia == diasMesComum[mes-1]){
			dia = 1;
			mes = 1;
			ano = ano +1;
		} else if (dia == diasMesComum[mes-1] && mes < 13){
			dia = 1;
			mes = mes + 1;
		} 
	}
   }
}

