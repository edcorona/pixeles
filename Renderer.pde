
 static class Renderer {
   //render a drawing
  public static void Render(AdnDibujo dibujo, PGraphics p,int scale){
    p.clear();
     ArrayList<DnaTriangulo> triangulos = dibujo.getTriangulos(); 
    for(int i=0;i<triangulos.size();i++){
      Render(triangulos, p, scale);
    }
  }
  //render a triangle
  

}
