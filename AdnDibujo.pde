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
    //recorrido del tamaño de la lista triangulos
    for(int i=0;i<triangulos.size();i++){
      //triangulo obtiene todos los triangulos con el get(i)
      triangulo=triangulos.get(i);
      //duda---------------------------------------
      cuantosPuntos += triangulo.getPuntos().size();
    }
    return cuantosPuntos;
  }
  
  //modifica el valor de EstaSucio a verdadero
  public void SetSucio(){
    EstaSucio=true;
  }
  
  //inicializacion 
  public void Init(){
    
    //nueva lista de triangulos declarada al inicio de la clase AdnDibujo
    triangulos= new ArrayList<DnaTriangulo>();
    
    //instanciacion de la clase Configuracion 
    //variable Active
    //recorrido de 0 hasta el valor de activeTriangleMin es 3 
    
    for(int i =0; i<Configuracion.ActiveTriangleMin; i++){
      //addtriangulo()
      AddTriangulo();
    }
     SetSucio(); 
  }
  //metodo de tipo AdnDibujo
  public AdnDibujo Clone(){
    //instanciacion de tipo AdnDibujo dibujo
    AdnDibujo dibujo = new AdnDibujo();
    //dibujo obtencion de triangulos es un arraylista de tipo Dnatriangulos
    //inicializacion de lista
    dibujo.triangulos= new ArrayList<DnaTriangulo>();
    //recorrido de arraylist
    for(int i =0;i<triangulos.size();i++){
      //variable de instanciacion que se le asigna el indice de la
      DnaTriangulo triangulo= triangulos.get(i);
      dibujo.triangulos.add(triangulo.Clone());   
    }
    return dibujo;
  }
  public void Mutacion(){
    //el valor de la variable de la clase configuracion, activeAddTrianguloRadioMutacion es de 700
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
    //condicional si el tamaño de la lista triangulos es menor a 255
    //instanciacion de la clase Configuracion variable ActiveTrianguleMax=255
    if(triangulos.size()<Configuracion.ActiveTrianguleMax){
      //instancia de la clase DnaTriangulo llamada nuevoTriangulo
      //iniciacion de metodo init con nuevoTriangulo
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
      triangulos.remove(index);
      index= int(random(0, triangulos.size()));
      triangulos.add(index, trian);
      SetSucio(); 
  }
  
  
  
}
//terminada todo bien
