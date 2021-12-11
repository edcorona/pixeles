import java.util.Random;

import java.util.stream.IntStream;
import java.util.OptionalInt;
public static class Herramientas{
  //private readonly palabra clave random
  
  //private static readonly Random random = new Random();
  private static Random random= new Random();
  //hacer lo equivalente en java
  public static int MaxFigures = 250;
  
  public static int getNumeroRandom(int min, int max)
{
  //conversion puede ser de la siguiente manera de stream a int
  //int[] ints = stream.toArray();
  //palabra clave key Next con min y max
  IntStream stream = random.ints(min,max);
  OptionalInt first = stream.findFirst();
  int resultado = first.getAsInt();
  return resultado;
  
}

public static int MaxWidth = 200;
public static int MaxHeight = 200;

public static boolean VaMutar(int mutationRate)
{
  if(getNumeroRandom(0, mutationRate) == 1){
    return true;
  }
  return false;
  //duda de return
  
}


}
//terminada duda en VaMutar
