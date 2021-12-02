class randomTents{
  /////////
   float xT,yT,anchoT,altoT;
   float movxT, movyT;
   randomTents(){
    xT = random(50,width-50);
    yT = random(50,height-50);
    anchoT = 40;
    altoT = 60;
    movyT= random(1,3);
   }
   void mover(){
     yT +=movyT;
    if (yT>height+altoT/2){
      xT= random(350,450);
      yT=0;
      movyT= random(1.5,3);
   }
  }
   void agrandar(){
    anchoT+=random(0.1,0.4);
    altoT+=random(0.1,0.4);
    if (yT>height+40){
      anchoT = 40;
      altoT = 40;
    }
  }
   ///////////////
  PImage img;
    randomTents (PImage tempTent){
      img = tempTent;
    }
    void dibujar (){
    image(img,xT,yT);
  }
  void actualizar(){

    dibujar();
    mover();
    agrandar();

  }
}
