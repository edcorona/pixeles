 class AdnDibujo{
   //variables de clase
   //lista de tipo DnaTriangulo llamada triangulos
  ArrayList<DnaTriangulo> triangulos;
  //variable booleana llamada EstaSucio
  boolean EstaSucio;
  
  //metodos
  
  //metodo que modifica la lista triangulos
  public void setTriangulos(ArrayList triangulos) {
    this.triangulos=triangulos;
  }
  //metodo que devuelve la lista triangulos
  public ArrayList getTriangulos(){
    return triangulos;
  }
  //metodo que regresa EstaSucio 
  public boolean getSucio(){
  return EstaSucio;
  }
  //metodo que modifica el valor de EstaSucio
  public void setSucio(boolean EstaSucio){
    this.EstaSucio=EstaSucio;
  }
  
  //metodo entero para contabilizar puntos
  public int CuantosPuntos(){
    //instanciacion de clase DnaTriangulo con nombre triangulo
    DnaTriangulo triangulo= new DnaTriangulo();
    //variable entera para contabilizar puntos
    int cuantosPuntos =0;
    for(int i=0;i<triangulos.size();i++){
      triangulo=triangulos.get(i);
      cuantosPuntos += triangulo.getPuntos().size();
    }
    return cuantosPuntos;
  }
  
  //modifica el valor de EstaSucio a verdadero
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
  public AdnDibujo Clone(){
    AdnDibujo dibujo = new AdnDibujo();
    dibujo.triangulos= new ArrayList<DnaTriangulo>();
    //duda
    for(int i =0;i<triangulos.size();i++){
      DnaTriangulo triangulo= triangulos.get(i);
      dibujo.triangulos.add(triangulo.Clone());   
    }
    return dibujo;
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
      triangulos.get(i).Mutacion(this);
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
      return;
    }
    int index = int(random(0, triangulos.size()));
      
      DnaTriangulo trian= triangulos.get(index);
      index= int(random(0, triangulos.size()));
      triangulos.add(index, trian);
      SetSucio(); 
  }
  
  
  
}
//terminada todo bien
