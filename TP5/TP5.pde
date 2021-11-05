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


String [] txt = {"iniciar", "créditos", "Después de tu aventura en la misteriosa isla, escalar la enorme torre y descubrir ese extraño libro en su cima, decides dejar todo como estaba, dar media vuelta e irte. Ya navegando en tu barco y alejandote de la costa no puedes dejar de sentir que algo te está siguiendo... "};


//imagenes para fondos
int maxImages = 5;
PImage[] fondos = new PImage[maxImages];
int imageIndex = 0;

PImage barcoPng;
barco prota;

PFont fuente;

int estado;
int puntuacion;

int mousex;
int mousey;

void setup() {
  size(800,600);
  
  tentaculosss= new tentaculos[cantTentaculos];
  for ( int i=0 ; i < cantTentaculos ; i++){
    tentaculosss[i] = new tentaculos();
  }
  
  for(int i = 0; i < tentImg.length; i++){
    tentImg[i] = loadImage("t_" + i + ".png");
  }
  
  barcoPng= loadImage("barco.png");
  prota= new barco();
  
  fuente= loadFont("DotGothic16-Regular-48.vlw");
  textFont(fuente);
  
  estado = 0;
  puntuacion = 0;
  

}
void draw() {
  println(imageIndex);
  background(0);
  
  if (estado==0){//inicio
    imageIndex = 0;
  }
  if (estado==1){//intro
    imageIndex = 1;
  }
  if (estado==2){//juego
    imageIndex = 2;
    text("puntuación"+puntuacion,350,50);
    prota.actualizar();
    
    for (int i = 0; i< cantTentaculos ; i++){
      tentaculosss[i].actualizar();
    }
    //evaluar colision
    
  }
  if (estado==3){//ganaste
    imageIndex = 3;
  }
  if (estado==4){//perdiste
    imageIndex = 4;
  }
  
}
void mousePressed() {
  if (estado==0){
    estado = 2;
  }
}
void keyPressed(){
    if (estado==2){
      prota.movimiento();
    }
  }
}
