
import static java.lang.System.*;
import java.util.Scanner;


public class TestSocialNetwork
{
  final static Scanner in = new Scanner(System.in);

  public static void main(String[] args)
  {
    String[] names = { "Joao","Anna","Nuno","Luis","Carlos",
                       "Antonio","Jose","Susana","Rosa","Odete",
                       "Amelia","Mario","Afonso","Leonor",
                       "Irene" };
    String[] professions = 
                     { "medico","engenheiro","professor",
                       "decorador","enfermeiro","juiz", "actor",
                       "carpinteiro","politico","padeiro",
                       "cabeleireiro","pastor","agricultor" };
    SocialNetwork sn = new SocialNetwork(10,4);

    /* Comente/descomente à medida que for testando:
    */

    out.println("sn.numMembers()=" + sn.numMembers());
    for(int i=0; i<names.length; i++) {
      int y = 1995-myRandom(35);
      String prof = professions[myRandom(professions.length)];
      sn.addMember(new Person(names[i],y,prof));
    }
    out.println("sn.numMembers()=" + sn.numMembers());


    /* Comente/descomente a medida que for testando:
     */

    out.println("sn.numRequests()=" + sn.numRequests());
    out.println("sn.maxNumRequests()=" + sn.maxNumRequests());
    for(int i=0; i<names.length; i++) {
      int np = myRandom(7);
      for(int j=i+1; j<i+np; j++) {
        sn.addFriendshipRequest(names[i],names[j%names.length]);
        int r = myRandom(3);
        if (r==1)
          sn.setRequestStatus(names[i],names[j%names.length],"accepted");
        if (r==2)
          sn.setRequestStatus(names[i],names[j%names.length],"rejected");
      }
    }
    out.println("sn.numRequests()=" + sn.numRequests());
    out.println("sn.maxNumRequests()=" + sn.maxNumRequests());
    sn.display();

    int x = myRandom(names.length);

    out.println("sn.numPendingRequests(" + names[x] + ")=" + sn.numPendingRequests(names[x]));

    out.println("sn.oldestFriend("+names[x]+"): " + sn.oldestFriend(names[x]));
  }

  /**
   * Retorna um número aleatório entre 0 e n-1.
   */
  static int myRandom(int n) {
    return (int)(Math.random()*n);
  }
}

