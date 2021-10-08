class AdnTrazo{
  int rojo;
  int verde;
  int azul;
  int alpha;
  public int getRojo(){
   return rojo;
  }
  public void setRojo(int rojo) {
    this.rojo=rojo;
  }
  public int getVerde(){
    return verde;
  }
  public void setVerde(int verde){
     this.verde=verde;
  }
  public int getAzul(){
    return azul;
  }
  public void setAzul(int azul){
     this.azul=azul;
  }
  public int getAlpha(){
    return alpha;
  }
  public void setAlpha(int alpha){
     this.alpha=alpha;
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
  public void mutacion(AdnDibujo dibujo){
    //acompletar
    if(Herramientas.VaMutar(Configuracion.ActivoRojoRadioMutacion)){
      rojo=int(random(0,255));
      dibujo.SetSucio();
    }
    if(Herramientas.VaMutar(Configuracion.ActivoVerdeRadioMutacion)){
      verde=int(random(0,255));
      dibujo.SetSucio();
    }
    if(Herramientas.VaMutar(Configuracion.ActivoAzulRadioMutacion)){
      azul=int(random(0,255));
      dibujo.SetSucio();
    }
    if(Herramientas.VaMutar(Configuracion.ActivoAlphaRadioMutacion)){
      alpha=int(random(0,255));
      dibujo.SetSucio();
    }
  
  }
  
  //terminada
  
}
