  import java.io.*;
  class FitnessCalculator{
  public  double GetDrawingFitness(AdnDibujo nuevoDibujo, int[][] sourceColors,PImage currentImage){
    double error = 0;
    //graphics es para pintar
    //render para pintar
    
    
    
     for(int y=0; y< Herramientas.MaxHeight; y++){
       for(int x=0; x < Herramientas.MaxWidth; x++){
         color c1 = GetPixel(currentImage, x, y);
         color c2 = sourceColors[x][y];
         
         double pixelError = GetColorFitness(c1,c2);
         error += pixelError;
       }    
     }
     //duda el usa Unlockbits aqui
     return error;
  }
  private color GetPixel(PImage currentImage, int x, int y)
  {
    //pasar imagen aqui
        currentImage.loadPixels();
        int loc = x + y*width;
        color pix= currentImage.pixels[loc];
        return pix;
  }
  //metodo de obtener color fitness
  private double GetColorFitness(color c1, color c2){
    double r=red(c1) - red(c2);
    double g=green(c1) - green(c2);
    double b=blue(c1) - blue(c2);
    
    return r*r + g*g + b*b;
    
  }
}
//terminadad duda en una
