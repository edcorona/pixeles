
  class Renderer {
   
   //render a drawing
  public  void Render(AdnDibujo dibujo){
     clear();
     ArrayList<DnaTriangulo> triangulos = dibujo.getTriangulos(); 
    for(int i=0;i<triangulos.size();i++){
    
      Render(triangulos.get(i));
    }
  }
  //render a triangle
  private  void Render(DnaTriangulo triangulo){
    int[][] puntos= getGPuntos(triangulo.getPuntos());
     AdnTrazo trazo= triangulo.getTrazo();
     stroke(trazo.getRojo(),trazo.getVerde(),trazo.getAzul(),trazo.getAlpha());
     fill(trazo.getRojo(),trazo.getVerde(),trazo.getAzul(),trazo.getAlpha());
    //triangle(puntos[0][0],puntos[0][1],puntos[1][0],puntos[1][1],puntos[2][0],puntos[2][1]);
    //quad(puntos[0][0],puntos[0][1],puntos[1][0],puntos[1][1],puntos[2][0],puntos[2][1],puntos[3][0],puntos[3][1]);
    polygon(puntos);
  }
  void polygon(int[][] puntos){
     beginShape();
      for (int a = 0; a < puntos.length; a++) { 
      vertex(puntos[a][0], puntos[a][1]);
  }
  endShape(CLOSE);
  }
  private  int[][] getGPuntos(ArrayList<DnaPunto> puntos){
    
    int[][] pts = new int[puntos.size()][2];
    int i = 0;
    for(int pt=0;pt<puntos.size(); pt++){
      pts[i][0] = puntos.get(pt).X;
      pts[i][1] = puntos.get(pt).Y;
      i++;
    }
    return pts;
  }
  //retornar un color brush argb
  public  color getGdiTrazo(AdnTrazo b){
    //color v;
    //color colores= color(alpha(v),red(v),green(v),blue(v));
    color colores= color(b.getRojo(),b.getVerde(),b.getAzul(),b.getAlpha());
    return colores;
  }
  
  

}
//terminada todo bien
