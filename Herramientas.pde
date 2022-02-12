import java.util.Random;
public static class Herramientas{
  //private readonly palabra clave random
  
  //private static readonly Random random = new Random();
  private static Random random= new Random();
  //public static int MaxFigures = 250;
  
  public static int getNumeroRandom(int min, int max)
{
  return random.ints(min,max).findFirst().getAsInt(); 
}

//public static int MaxWidth = 128;

//public static int MaxHeight = 128;

public static boolean VaMutar(int mutationRate)
{
  if(getNumeroRandom(0, mutationRate) == 1){
    return true;
  }
  return false;
  //duda de return
  
}


}
