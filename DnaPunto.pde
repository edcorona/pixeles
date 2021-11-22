public class DnaPunto{
  int X;
  
  int Y;
  public int getX(){
    return X;
  }
  public int setX(int X){
    return this.X=X;
  }
  public int getY(){
    return Y;
  }
  public int setY(int Y){
    return this.Y=Y;
  }
  public void Init(){
    X= int(random(0, Herramientas.MaxWidth));
    Y= int(random(0, Herramientas.MaxHeight));
  }
  
  public DnaPunto Clone(){
    
      DnaPunto temp = new DnaPunto();
      temp.setX(this.X);
      temp.setY(this.Y);
      
      return temp;  
  }
  public void VaMutar(AdnDibujo dibujo){
    if(Herramientas.VaMutar(Configuracion.ActiveMovePuntoMutacionRadio))
    {
      X= int(random(0,Herramientas.MaxWidth));
      Y= int(random(0, Herramientas.MaxHeight));
      dibujo.SetSucio();
    }
    if(Herramientas.VaMutar(Configuracion.AcitveMovePuntoMidMutacionRadio))
      {
        //mejorar
        X=Math.min(Math.max(0,X+int(random(-Configuracion.AcitveMovePointRangeMid,Configuracion.AcitveMovePointRangeMid))), Herramientas.MaxWidth);
        //mejorar
        Y=Math.min(Math.max(0,Y+int(random(-Configuracion.AcitveMovePointRangeMid,Configuracion.AcitveMovePointRangeMid))), Herramientas.MaxHeight);
        dibujo.SetSucio();
      }
      if(Herramientas.VaMutar(Configuracion.AcitveMovePuntoMinMutacionRadio)){
        // mejorar
        X=Math.min(Math.max(0,X+int(random(-Configuracion.ActiveMovePointRangeMin,Configuracion.ActiveMovePointRangeMin))), Herramientas.MaxWidth);
        //mejorar
        Y=Math.min(Math.max(0,Y+int(random(-Configuracion.ActiveMovePointRangeMin,Configuracion.ActiveMovePointRangeMin))), Herramientas.MaxHeight);
        dibujo.SetSucio();
      }
      //terminado todo bien
  }

}
