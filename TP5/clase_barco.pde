class barco {
   //propiedades
  float bx,by,ancho,alto;
  float movx, movy;
  
  //constructor
  barco(){
    bx=0;
    by=550;
    ancho=40;
    alto=60;
  }
  void dibujar (){
    image(barcoPng,380,530);
  }
  
  void movIzquierda() {
   if (key == LEFT){
   bx -- ;
   }
  }
  void movDerecha(){
   if (key == RIGHT){
   bx ++ ;
   } 
  }
  void movimiento (){
    movIzquierda();
    movDerecha();
  }
  void actualizar(){
    keyPressed();
    dibujar ();
  }
}
