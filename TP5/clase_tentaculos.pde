//declaracion de una clase

class tentaculos {
  //propiedades
  float xT,yT,anchoT,altoT;
  float movxT, movyT;
  
  //constructor
  tentaculos(){
    tentIndex = int(random(0,tentImg.length));
    xT = random(50,width-50);
    yT = random(50,height-50);
    anchoT = 40;
    altoT = 60;
    //movxT=random(2,-2);
    movyT= random(1,3);
  }
  //funcionalidad
  void dibujar (){
    rTents[tentIndex].dibujar();
  
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
  boolean colision(float xC,float yC, float r){
    if (dist (xT,yT,xC,yC) < anchoT/2+r){
      yT = random(50,height-50);
      return true;
    } else {
      return false;
    }
  }
  
  void actualizar(){
  
    dibujar();
    mover();
    agrandar();
      
  }


}
