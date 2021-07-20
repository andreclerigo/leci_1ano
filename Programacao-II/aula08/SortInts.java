import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
	if(args.length == 0){
		err.println("Usage: java SortInts <file> ...");
		System.exit(0);
	}
	SortedListInt lst = new SortedListInt();
	
	for (int i = 0; i < args.length; i++){
		File f = new File(args[i]);
		if(!f.exists()){
			err.printf("%s doesn't exists!", args[i]);
			continue;
		}
		Scanner scf = new Scanner(f);
		while(scf.hasNext()){
			try{
				lst.insert(Integer.parseInt(scf.next()));
			}catch(NumberFormatException e){
			}
		}
		scf.close();
	}
	
	assert !lst.isEmpty();
	assert lst.isSorted();
	
	while(!lst.isEmpty()){
		out.printf("%d", lst.first());
		out.println();
		lst.removeFirst();
	}
	
  }

}


