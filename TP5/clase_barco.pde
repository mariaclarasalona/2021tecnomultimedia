class barco {
   //propiedades
  float bx,by,anchoB,altoB;
  float movxB, movyB;
  
  //constructor
  barco(){
    bx=0;
    by=550;
    anchoB=40;
    altoB=60;
  }
  //funcionalidad
  void dibujar (){
    image(barcoPng,380,530);
  }
  
  void movIzquierda() {

   bx -- ;
  }
  void movDerecha(){

   bx ++ ;
  }
 /* void movimiento (){
    movIzquierda();
    movDerecha();
  }
  */
  void actualizar(){
    dibujar ();
  }
}
