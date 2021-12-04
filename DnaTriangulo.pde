public class DnaTriangulo{
  ArrayList<DnaPunto> Puntos;
  AdnTrazo trazo;
  
  public ArrayList<DnaPunto> getPuntos(){
   return Puntos;
  }
  public void setPuntos(ArrayList Puntos) {
    this.Puntos=Puntos;
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
   
   DnaPunto origin= new DnaPunto();
   origin.Init();
   
   for(int i=0; i< Configuracion.AcitvePointPerTriangleMin; i++){
     DnaPunto punto= new DnaPunto();
     punto.setX(Math.min(Math.max(0, origin.getX() + int(random(-3,3))), Herramientas.MaxWidth));
     punto.setY(Math.min(Math.max(0, origin.getY()+ int(random(-3,3))), Herramientas.MaxHeight));
     
     Puntos.add(punto);
   }
   
   trazo= new AdnTrazo();
   trazo.Init();
 }
 
 public DnaTriangulo Clone(){
   DnaTriangulo nuevoTriangulo = new DnaTriangulo();
   
   nuevoTriangulo.Puntos = new ArrayList<DnaPunto>();
   nuevoTriangulo.trazo = trazo.Clone();
   
   for(int i=0;i<Puntos.size();i++){
     nuevoTriangulo.Puntos.add(Puntos.get(i).Clone());
   }
   
   return nuevoTriangulo;
 }
 
 public void Mutacion(AdnDibujo dibujo){
   if(Herramientas.VaMutar(Configuracion.ActivoAddPuntoRadioMutacion)){
     AddPunto(dibujo);
   }
   
   if(Herramientas.VaMutar(Configuracion.ActivoRemovePuntoRadioMutacion)){
     RemovePunto(dibujo);
   }
   
   trazo.mutacion(dibujo);
   for(int i=0;i<Puntos.size();i++){
     DnaPunto p= Puntos.get(i);
     p.VaMutar(dibujo);
   }
   //duda de terminacion
   
   
 }
 
 private void RemovePunto(AdnDibujo dibujo){
   if(Puntos.size() > Configuracion.AcitvePointPerTriangleMin){
     if(dibujo.CuantosPuntos() > Configuracion.ActiveTriangleMin){
       int index = int(random(0, Puntos.size()));
       Puntos.remove(index);
       
       dibujo.SetSucio();
     }
   }
 }
 
 
 private void AddPunto(AdnDibujo dibujo){
   if(Puntos.size()< Configuracion.ActivePuntosPorTrianguloMax){
     if(dibujo.CuantosPuntos() < Configuracion.ActivePuntosMax){
       DnaPunto nuevoPunto= new DnaPunto();
       int index = int(random(1, Puntos.size()-1));
       
       
       DnaPunto prev = Puntos.get(index - 1);
       
       DnaPunto next = Puntos.get(index);
       
       nuevoPunto.X = (prev.X + next.X)/2;
       nuevoPunto.Y = (prev.Y + next.Y)/2;
       
       Puntos.add(index,nuevoPunto);
       
       dibujo.SetSucio();
     }
   }
 }
}
//terminado duda en mutacion
