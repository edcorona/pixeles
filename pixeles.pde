private int [][] sourceColors;
private AdnDibujo currentDibujo;

private int generacion;
private FitnessCalculator calculator;
private Renderer render;
private double errorLevel = Double.MAX_VALUE;
//Imagen pequeña 200x234 chicaPerla.jpg
//Imagen ch 300x352 chPerla.jpg
//Imagen mediana 600x703 medPerla.jpg
//Imagen grande 1200x1300 grandPerla.jpg
//Imagen grande 950x1050  grandPC.jpeg
public int MaxWidth = 950;
public int MaxHeight = 1050;
PFont f;
PImage target ;
void setup(){
  size(950,1050);
  f = createFont("Courier", 12, true);
  loadPixels();
  target = loadImage("/data/grandPC.jpeg");
  updatePixels();
   render = new Renderer();
  setupSourceColorMatrix();
  calculator= new FitnessCalculator();
  currentDibujo = getNewInicializacion();
  
}
void draw()
{
  
  
   AdnDibujo nuevoDibujo;
   
   nuevoDibujo = currentDibujo.Clone();
   nuevoDibujo.Mutacion(); 
  if(nuevoDibujo.getSucio()){
    generacion++;
    
    
    
    double nuevoErrorlevel = calculator.GetDrawingFitness(nuevoDibujo, sourceColors, render, generacion);
    
    if(nuevoErrorlevel <= errorLevel){
      
      
      currentDibujo = nuevoDibujo;
      errorLevel = nuevoErrorlevel;
    }
  }
  
  
  
}

private void setupSourceColorMatrix(){
  sourceColors = new int [MaxWidth][MaxHeight];
  
  
  for (int y=0; y< MaxHeight; y++)
  {
    for(int x = 0; x < MaxWidth; x++)
    {
      int loc = x + y*width;
      float r = red(target.pixels[loc]);
      float g = green(target.pixels[loc]);
      float b = blue(target.pixels[loc]);
      float a = alpha(target.pixels[loc]);
      
      sourceColors[x][y]= color(r,g,b,a);
     
    }
  }
  
}
private AdnDibujo getNewInicializacion(){
  AdnDibujo dibujo= new AdnDibujo();
   dibujo.Init();
   return dibujo;
}
