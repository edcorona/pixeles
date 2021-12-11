
  class Renderer {
   
   //render a drawing
  public  void Render(AdnDibujo dibujo, PGraphics p,int scale){
    //p.clear();
     ArrayList<DnaTriangulo> triangulos = dibujo.getTriangulos(); 
    for(int i=0;i<triangulos.size();i++){
    
      Render(triangulos.get(i), p, scale);
    }
  }
  //render a triangle
  private  void Render(DnaTriangulo triangulo, PGraphics g, int scale){
    int[] puntos= getGPuntos(triangulo.getPuntos(), scale);
     AdnTrazo trazo= triangulo.getTrazo();
     //beginDraw();
     stroke(trazo.getRojo(),trazo.getVerde(),trazo.getAzul(),trazo.getAlpha());
     fill(trazo.getRojo(),trazo.getVerde(),trazo.getAzul(),trazo.getAlpha());
    triangle(puntos[0],puntos[1],puntos[2],puntos[3],puntos[4],puntos[1]);
    //println(puntos[0]+","+puntos[1]+","+puntos[2]+","+puntos[3]+","+puntos[4]+","+puntos[5]);
    //endDraw();
    
  }
  //modo processing
  //public void triangleRender(float x1, float y1, float x2, float y2, float x3, float y3){
    //g.triangle(x1,y1,x2,y2,x3,y3);
  //}
  
  
  
  private  int[] getGPuntos(ArrayList<DnaPunto> puntos,int scale){
    int[] pts = new int[puntos.size()*2];
    int i = 0;
    for(int pt=0;pt<puntos.size(); pt++){
      pts[i++] = puntos.get(pt).X*scale;
      pts[i++] = puntos.get(pt).Y*scale;
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
