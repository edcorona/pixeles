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
      AddTriangulo();
    }
     SetSucio(); 
  }
  //mejorar
  public DnaTriangulo Clone(){
    AdnDibujo dibujo = new AdnDibujo();
    dibujo.triangulos= new ArrayList<DnaTriangulo>();
    //duda
    for(int i =0;i<triangulos.size();i++){
      dibujo.triangulos.add();
    }
  }
  public void Mutacion(){
    if(Herramientas.VaMutar(Configuracion.ActiveAddTrianguloRadioMutacion)){
      AddTriangulo();
    }
    if(Herramientas.VaMutar(Configuracion.ActiveRemoveTrianguloRadioMutacion)){
      RemoveTriangulo();
    }
    if(Herramientas.VaMutar(Configuracion.ActiveMoveTrianguloRadioMutacion)){
      MoveTriangulo();
    }
    for(int i=0;i<triangulos.size();i++){
      //duda
    }
  }
  public void AddTriangulo(){
    if(triangulos.size()<Configuracion.ActiveTrianguleMax){
      DnaTriangulo nuevoTriangulo= new DnaTriangulo();
      nuevoTriangulo.Init();
      
      int index=int(random(0, triangulos.size()));
      //add en vez de insert
      triangulos.add(index, nuevoTriangulo);
      SetSucio();      
    }
  }
  public void RemoveTriangulo(){
    if(triangulos.size()> Configuracion.ActiveTriangleMin){
      int index= int(random(0, triangulos.size()));
      triangulos.remove(index);
      SetSucio(); 
    }
  }
  public void MoveTriangulo(){
    if(triangulos.size() <1){
      int index = int(random(0, triangulos.size()));
      DnaTriangulo trian= triangulos.get(index);
      index= int(random(0, triangulos.size()));
      triangulos.add(index, trian);
      SetSucio(); 
    }
  }
  
  
  
}
