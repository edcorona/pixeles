private int [][] sourceColors;
private AdnDibujo currentDibujo;
private int lastSelected;
private int selected;
private int generacion;
private FitnessCalculator calculator;
private double errorLevel = Double.MAX_VALUE;
PImage target ;
void setup(){
  size(250,216);
  loadPixels();
  target = loadImage("/data/geneticBird.png");
  updatePixels();
}
void draw()
{
  setupSourceColorMatrix();
  currentDibujo = getNewInicializacion();
  lastSelected = 0;
  AdnDibujo nuevoDibujo;
  calculator= new FitnessCalculator();
  nuevoDibujo = currentDibujo.Clone();
  nuevoDibujo.Mutacion();
  if(nuevoDibujo.getSucio()){
    generacion++;
    
    double nuevoErrorlevel = calculator.GetDrawingFitness(nuevoDibujo, sourceColors,target);
    if(nuevoErrorlevel <= errorLevel){
      selected ++;
      
      currentDibujo = nuevoDibujo;
      errorLevel = nuevoErrorlevel;
    }
  }
  
  
  
}

private void setupSourceColorMatrix(){
  sourceColors = new int [Herramientas.MaxWidth][Herramientas.MaxHeight];
  
  
  for (int y=0; y< Herramientas.MaxHeight; y++)
  {
    for(int x = 0; x < Herramientas.MaxWidth; x++)
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
