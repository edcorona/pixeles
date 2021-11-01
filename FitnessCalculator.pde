  import java.io.*;
  class FitnessCalculator{
  public  double GetDrawingFitness(AdnDibujo nuevoDibujo, int[][] sourceColors){
    double error = 0;
    
     for(int y=0; y< Herramientas.MaxHeight; y++){
       for(int x=0; x < Herramientas.MaxWidth; x++){
         color c1 = GetPixel();
         color c2 = sourceColors[x, y];
         
         
       }
     }
    
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
  private double GetColorFitness(color c1, color c2){
    double r=red(c1) - red(c2);
    double g=green(c1) - green(c2);
    double b=blue(c1) - blue(c2);
    
    return r*r + g*g + b*b;
    
  }
}
