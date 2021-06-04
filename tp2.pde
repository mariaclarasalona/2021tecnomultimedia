/*
María Clara Saloña
Legajo 85207/7
Comisión 3
Prof. David Bedoian
*/

PImage fondo;
PImage fondo2;
PImage fondo3;
PImage fondo4;

PImage titulo;

PFont letra;

int posY;
int posX;

int tintCounter;
int tintCounter2;
int tintCounter3;
int tintCounter4;

int fondoCounter;

void setup () {
  size(600, 600);
  background(0);
  
  letra= loadFont("PalatinoLinotype-Roman-48.vlw");
  titulo= loadImage("titulo.png");
  fondo= loadImage("fondo.jpg");
  fondo2= loadImage("fondo2.jpg");
  fondo3= loadImage("fondo3.jpg");
  fondo4= loadImage("fondo4.jpg");

  textFont(letra);
  imageMode(CENTER);
  textAlign(CENTER);
  
  posX=300;
  posY=300;
  
  tintCounter= 0;
  tintCounter2= 0;
  tintCounter3= 0;
  tintCounter4= 0;

  
  fondoCounter=1;

}
void draw () {
  
  //pantallas

  if ( fondoCounter == 1){
    
    tint(255,tintCounter);
    image(fondo,300,300,700,600);
    tintCounter+=50;
    
  }else if ( fondoCounter == 2){
    
    tint(255,tintCounter2);
    image(fondo2,300,300,1000,600);
    tintCounter2+=50;
    
  }else if ( fondoCounter == 3){
    tint(255,tintCounter3);
    image(fondo3,300,300,1000,600);
    tintCounter3+=50;
  }else{
    tint(255,tintCounter4);
    image(fondo4,300,300,900,600);
    tintCounter4+=50;
  }
  
  //el viaje de chihiro
  pushStyle();
  tint(255,255);
  image(titulo,posX,posY,500,200);
  popStyle();
  
  pushStyle();
  tint(255,255);
  textSize(25);
  
  //titulos
  text("Dirección",posX,posY+400);
  text("Dirección artística",posX,posY+600);
  text("Producción",posX,posY+800);

  text("Guión",posX,posY+1000);
  

  text("Voces",posX,posY+1400);
  
  //personas
  textSize(30);
  text("Hayao Miyazaki",posX,posY+435);
  text("Yoji Takeshige",posX,posY+635);
  text("Toshio Suzuki",posX,posY+835);

  text("Hayao Miyazaki",posX,posY+1035);
  

  
  popStyle();
  
  
  
  pushStyle();
  ///musica
  textAlign(LEFT);
  textSize(25);
  text("Música",posX-200,posY+1200);
  
  textSize(30);
  text("Joe Hisaishi",posX+70,posY+1235);
  text("Yumi Kimura",posX+70,posY+1275);
  
  ///voces
  //personajes
  textSize(20);
  text("Chihiro Ogino",posX+100,posY+1450);
  text("Haku",posX+100,posY+1485);
  text("Yubaba",posX+100,posY+1520);
  text("Zeniba",posX+100,posY+1555);
  text("Lin",posX+100,posY+1590);
  text("Kamajii",posX+100,posY+1625);
  text("Boh",posX+100,posY+1660);
  text("Sin cara",posX+100,posY+1695);
  
  
  //actores de voz
  text("Rumi Hiiragi",posX-250,posY+1450);
  text("Miyu Irino",posX-250,posY+1485);
  text("Mari Natsuki",posX-250,posY+1520);
  
  text("Yumi Tamai",posX-250,posY+1590);
  text("Bunta Sugawara",posX-250,posY+1625);
  text("Ryunosuke Kamiki",posX-250,posY+1660);
  text("Akio Nakamura",posX-250,posY+1695);

  
  popStyle();
  
  ///posible arreglo
  if ( frameCount == 80){
    fondoCounter = fondoCounter+1;
  }
  if ( frameCount == 160){
    fondoCounter = fondoCounter+1;
  }
  if ( frameCount == 240){
    fondoCounter = fondoCounter+1;
  }
  if ( frameCount == 320){
    fondoCounter = fondoCounter+1;
  }
  
  
  posY-=6;
  
  //print(fondoCounter);
  //print(frameCount);

 
}
