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
  public void VaMutar(){
  
  }

}
