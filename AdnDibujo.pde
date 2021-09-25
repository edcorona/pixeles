public class AdnDibujo{
  ArrayList<DnaTriangulo> triangulos;
  boolean EstaSucio;
  
  public void setTriangulos(ArrayList triangulos) {
    this.triangulos=triangulos;
  }
  
  public ArrayList getTriangulos(){
    return triangulos;
  }
  
  public boolean getSucio(){
  return EstaSucio;
  }
  
  public void setSucio(boolean EstaSucio){
    this.EstaSucio=EstaSucio;
  }
  
  public int CuantosPuntos(){
     
    DnaTriangulo triangulo= new DnaTriangulo();
    int cuantosPuntos =0;
    for(int i=0;i<triangulos.size();i++){
      triangulo=triangulos.get(i);
      cuantosPuntos += triangulo.getPuntos().size();
    }
    return cuantosPuntos;
  
  }
  public void SetSucio(){
    EstaSucio=true;
  }
  
  public void Init(){
    triangulos= new ArrayList<DnaTriangulo>();
    
    for(int i =0; i<Configuracion.ActiveTriangleMin; i++){
      //addtriangulo()
    }
  }
  
  
}
