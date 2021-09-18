class AdnTrazo{
  int rojo;
  int verde;
  int azul;
  int alpha;
  public int getRojo(){
   return rojo;
  }
  public int setRojo(int rojo) {
    return this.rojo=rojo;
  }
  public int getVerde(){
    return verde;
  }
  public int setVerde(int verde){
    return this.verde=verde;
  }
  public int getAzul(){
    return azul;
  }
  public int setAzul(int azul){
    return this.azul=azul;
  }
  public int getAlpha(){
    return alpha;
  }
  public int setAlpha(int alpha){
    return this.alpha=alpha;
  }
  public void Init(){
    int Rojo=getRojo();
    Rojo= int(random(0,255));
    int Azul=getAzul();
    Azul= int(random(0,255));
    int Verde=getVerde();
    Verde= int(random(0,255));
    int Alpha=getAlpha();
    Alpha= int(random(10,60)); 
  }
  
  public AdnTrazo Clone(){
     
     AdnTrazo temp = new AdnTrazo();
     temp.setsetRojo(this.rojo);
     temp.setsetAzul(this.azul);
     temp.setsetVerde(this.verde);
     temp.setsetAlpha(this.alpha);
     
     return temp;
  } 
  public void mutacion(){
    //acompletar
  
  }
  
  
  
}
