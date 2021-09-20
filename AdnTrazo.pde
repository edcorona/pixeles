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
   
    rojo= int(random(0,255));
   
    azul= int(random(0,255));
  
    verde= int(random(0,255));
   
    alpha= int(random(10,60)); 
  }
  
  public AdnTrazo Clone(){
     
     AdnTrazo temp = new AdnTrazo();
     temp.setRojo(this.rojo);
     temp.setAzul(this.azul);
     temp.setVerde(this.verde);
     temp.setAlpha(this.alpha);
     
     return temp;
  } 
  public void mutacion(){
    //acompletar
    if(Herramientas.VaMutar(Configuracion.ActivoRojoRadioMutacion)){
      rojo=int(random(0,255));
    }
  
  }
  
  
  
}
