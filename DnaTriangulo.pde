public class DnaTriangulo{
  ArrayList<DnaPunto> Puntos;
  AdnTrazo trazo;
  
  public ArrayList<DnaPunto> getPuntos(){
   return Puntos;
  }
  public ArrayList<DnaPunto> setPuntos(ArrayList Puntos) {
    return this.Puntos=Puntos;
  }
  
  public AdnTrazo getTrazo(){
    return trazo;
  }
   public AdnTrazo setTrazo(AdnTrazo trazo){
     return this.trazo=trazo;
   }
   
   public void Init()
 {
   Puntos = new ArrayList<DnaPunto>();
   
   String origin= new DnaPunto();
 }
}
