/*
 * André Clérigo
 * Nº Mec: 98485
 * 15/11/19
 */
 
 import java.util.*;
 
 public class teste{
	 static Scanner input = new Scanner (System.in);
	 public static void main (String [] args){
		int n, funcaoseno;
		double valores=0, media=0, soma=0;
		int notas[] = new int[50];
		
		Random rd = new Random();
		
		for (int i = 0; i < 49; i++){
			notas[i] = rd.nextInt();
		}
		
		for (int i = 0; i < 49; i++){
			if (notas[i] == 0){
				continue;
			}else{
				valores = valores + Math.sin(notas[i]);
			}	
		}
		
		media = (double) valores / (notas.length +1);
		
		texto();
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 public static void texto (){
		System.out.println("                                                   ▟█▛");
		System.out.println("");
		System.out.println("████████████   ████████████   ███      ███        ██        ████████████");
		System.out.println("██  ████  ██   ████    ████   ████    ████      ██████      ████        ");
		System.out.println("    ████       ████    ████   ███  ██  ███     ███  ███     ████▂▂▂▂▂▂▂▂");
		System.out.println("    ████       ████    ████   ███      ███    ███    ███    ████████████");
		System.out.println("    ████       ████    ████   ███      ███   ████████████           ████");
		System.out.println("    ████       ████████████   ███      ███   ███      ███   ████████████   ██");
		System.out.println("                                                                         ▐██ "); 
		System.out.println("");System.out.println("");
		System.out.println("████████████   ████    ████   ████████████   ████████████   ████████████   ████████████          ████████████   ████████████   ████████████          ███      ███   ████████████   ████    ████");
		System.out.println("███      ███   ████    ████   ████           ████    ████   ████           ████                  ████           ████           ████    ████          ████    ████   ████           ████    ████");
		System.out.println("███      ███   ████    ████   ████▃▃▃▃▃▃▃▃   ████    ████   ████▃▃▃▃▃▃▃▃   ████▂▂▂▂▂▂▂▂          ████▂▂▂▂▂▂▂▂   ████▃▃▃▃▃▃▃▃   ████    ████          ███  ██  ███   ████▃▃▃▃▃▃▃▃   ████    ████");
		System.out.println("███      ███   ████    ████   ████████████   ███████████    ████████████   ████████████          ████████████   ████████████   ████████████          ███      ███   ████████████   ████    ████");
		System.out.println("███    █████   ████▂▂▂▂████   ████           ████    ███    ████                   ████                  ████   ████           ████    ███           ███      ███   ████           ████▃▃▃▃████");
		System.out.println("████████████   ████████████   ████████████   ████     ███   ████████████   ████████████          ████████████   ████████████   ████     ███          ███      ███   ████████████   ████████████"); 
		System.out.println("            ███"); 
		System.out.println("");System.out.println("");
		System.out.println("                                                               ▔▚▂▞▚▂");
		System.out.println("");
		System.out.println("████████████        ██        ████████████   ████████████        ██        ████████████   ████████████");
		System.out.println("████    ████      ██████      ██  ████  ██   ████    ████      ██████      ████    ████   ████    ████");
		System.out.println("████    ████     ███  ███         ████       ████    ████     ███  ███     ████    ████          ████  ");
		System.out.println("████████████    ███    ███        ████       ███████████     ███    ███    ████    ████        ████   ");
		System.out.println("████           ████████████       ████       ████    ███    ████████████   ████    ████        ███    ");
		System.out.println("████           ███      ███       ████       ████     ███   ███      ███   ████████████        ▔▔▔  ");
		System.out.println("                                                                                              █████   ");
	 }
 }
