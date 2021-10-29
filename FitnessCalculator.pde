  import java.io.*;
  class FitnessCalculator{
  public static double GetDrawingFitness(AdnDibujo nuevoDibujo, int[][] sourceColors){
    double error = 0;
   
    
  }
  private color GetPixel()
  {
    PImage currentImage;
    //pasar imagen aqui
    currentImage=loadImage("");
    currentImage.loadPixels();
    for(int y=0; y<height; y++)
    {  
      for(int x=0;x<width; x++){
        int loc = x + y*width;
        color pix= currentImage.pixels[loc];
      }
    }
  
  }
  //metodo de obtener color fitness
  private double GetColorFitness(){
    
  }
}
