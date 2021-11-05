//declaracion de una clase

class tentaculos {
  //propiedades
  float x,y,ancho,alto;
  float movx, movy;
  
  //constructor
  tentaculos(){
    x = random(50,width-50);
    y = random(50,height-50);
    ancho = 40;
    alto = 60;
    //movx=random(2,-2);
    movy= random(1,3);
  }
  //funcionalidad
  void dibujar (){
    image(tentImg[random(0,2)],x,y);
  }
  void mover(){
    //x +=movx;
    y +=movy;
    if (y>height+alto/2){
      x= random(350,450);
      y=0;
      movy= random(1.5,3);
      //movx=random(2,-2);
    }
  }
  void agrandar(){
    ancho+=random(0.1,0.4);
    alto+=random(0.1,0.4);
    if (y>height+40){
      ancho = 40;
      alto = 40;
    }
  }
  void actualizar(){
    dibujar();
    mover();
    agrandar();
  }

}
