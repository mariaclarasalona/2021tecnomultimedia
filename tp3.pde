/*

https://youtu.be/7OsMN30MrSU

María Clara Saloña
Legajo 85207/7
comisión 3
Prof. David Bedoian
*/

float rotacion;

float diametro;

float x;
int numero;

float estado;

void setup (){
  size (600,600);

  noStroke();
  
  diametro = 250;
  rotacion = radians(0);
  
  x = width;
  numero = 200;
  
  estado = 0;
  
  
}

void draw (){

  textAlign(CENTER);
  rectMode(CENTER);
  
  translate (width/2, height/2);
  
  if (estado ==0){
    background (255);
    
    fill(0);
    textSize(20);
    text( "ILUSIÓN OPTICA",0,0);
    rect(0,150,150,70);
    
    fill(255);
    text( "COMENZAR",0,155);
    
    
    if ( mouseX > 225 && mouseX < 374 && mouseY > 400 &&
        mouseY < 484 ){
          
          fill(random(255),random(255),random(255));
          rect(0,150,150,70);
          fill(255);
          text( "COMENZAR",0,155);
          
        }
    
    
  }else{
    background (0);
    fill (255);
  
    for (int inicia=0; inicia<360; inicia+=45){
    
      rotate(radians(inicia));
    
      pushMatrix();
      for (int inicia2=0; inicia2<numero; inicia2 ++){
        scale (0.80);
        rotate(rotacion);
        ellipse (x,0,diametro,diametro);
    
      }
      popMatrix();
    }
    rotacion+= 0.003;
  }
}

void mouseClicked(){
  
   if (estado ==0){
      
      estado=1;
      
    }else{
      
      estado=0;
      rotacion = 0;
      
    }
}
