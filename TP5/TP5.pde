/*
video:
Saloña, Marìa Clara
legajo 85207/7
tecno multimedia 1
comision 3 prof. david bedoian
*/


//declaracion de espacio de memoria tentaculos
tentaculos[] tentaculosss;
int cantTentaculos = 3;

//imagenes para tentaculos
int maxTents = 2;
PImage[] tentImg = new PImage[maxTents];
int tentIndex = 0;
//seleccionar imagen random
randomTents[] rTents = new randomTents [tentImg.length];


String [] txt = {"iniciar", "créditos", "Después de tu aventura en la misteriosa isla, escalar la enorme torre y descubrir ese extraño libro en su cima, decides dejar todo como estaba, dar media vuelta e irte. Ya navegando en tu barco y alejandote de la costa no puedes dejar de sentir que algo te está siguiendo... "};


//imagenes para fondos
int maxImages = 6;
PImage[] fondos = new PImage[maxImages];
int imageIndex = 0;

//declaracion barco e img
PImage barcoPng;
barco prota;

PFont fuente;

int estado;
int puntuacion;
int colisiones;

int mousex;
int mousey;

void setup() {
  size(800,600);
  
  //instancias nuevas de tentaculo
  tentaculosss= new tentaculos[cantTentaculos];
  for ( int i=0 ; i < cantTentaculos ; i++){
    tentaculosss[i] = new tentaculos();
  }
  
  for(int i = 0; i < tentImg.length; i++){
    tentImg[i] = loadImage("t_" + i + ".png");
    rTents[i] = new randomTents (tentImg[i]);
  }
  
  //carga fondos
  for(int i = 0; i < fondos.length; i++)
    fondos[i] = loadImage("c_" + i + ".png");
  
  //instancia nueva de barco
  barcoPng= loadImage("barco.png");
  prota= new barco();
  
  fuente= loadFont("DotGothic16-Regular-48.vlw");
  textFont(fuente);
  
  estado = 0;
  puntuacion = 0;
  colisiones = 0;
  
  

}
void draw() {
  println("imagen"+imageIndex);
  println("estado"+estado);
  background(0);
  image(fondos[imageIndex],0,0, width ,height);
  
  if (estado==0){//inicio
    imageIndex = 0;
  }
  if (estado==1){//intro
    imageIndex = 2;
  }
  if (estado==2){//juego
    imageIndex = 3;
    puntuacion ++;
    text("puntuación"+puntuacion,350,50);
    prota.actualizar();
    
    for (int i = 0; i< cantTentaculos ; i++){
      tentaculosss[i].actualizar();
      rTents[tentIndex].dibujar();
    }
    //evaluar colision
    for (int i=0; i< cantTentaculos ; i++){
      tentaculosss[i].colision(prota.bx,prota.by,prota.anchoB);
      colisiones ++;
    }
    if(colisiones==3){//perdiste
      estado=3;
    }
    
    //ganar
    if(puntuacion==100){//ganaste
      estado=4;
    }
  }
  if (estado==4){//ganaste
    imageIndex = 5;
  }
  if (estado==3){//perdiste
    imageIndex = 5;
  }
  if (estado==5){//creditos
    imageIndex = 1;
  }
  
}
void mousePressed() {
  if (estado==0){
    estado = 1;
  }else if (estado==1){
    estado = 2;
  }else if (estado==4){
    estado = 5;
  }else if (estado==3){
    estado = 5;
  }else if (estado==5){
    estado = 0;
  }
}
void keyPressed(){
    if (estado==2){
      if( key == 'a' ){
        prota.movIzquierda();
        
        }else if( key == 'd' ){
          prota.movDerecha();
         }
      }
}
