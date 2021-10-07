
////// https://youtu.be/zd8ruhKomWc


String [] storyTxt = { "Eres un marinero. De dónde vienes se escuchan rumores y leyendas de que barcos desaparecen en una parte remota del mar, decides investigar y te encuentras con una isla que no está en ningún mapa, decides desembarcar y tratar de descubrir el fondo de este misterio.",
"Llegas a la isla y parece estar completamente desierta, no parece haber pasado un barco por este puerto en meses.",
"Decides que no vale la pena arriesgarse por algo que probablemente sea una leyenda, agarras tus cosas, subes a tu barco y te despides de la isla.",
"Te adentras en la ciudad y te encuentras con lo que parece ser una plaza central, en el medio una gran fuente de piedra, todo rodeado de lo que solían ser puestos de venta y negocios. Ves un cartel que señala los diferentes caminos que salen desde la plaza.",
"tomas el camino hacia el acantilado, mientras más te acercas a él las casas se hacen mas y mas pequeñas hasta que desaparecen por completo, sientes que algo te atrae hacia la punta.",
"tratas de resistirte pero la fuerza es muy fuerte, necesitas ir hacia el mar",
"Decides tomarte tu tiempo en explorar la ciudad con esperanzas de encontrar algo que te ayude a develar este misterio, todo se encuentra vacio pero no puedes evitar sentir que te están observando.",
"intentas escapar de tus persecutores pero la ciudad es casi un laberinto y te resulta imposible encontrar el camino de vuelta al puerto, corriendo, das un mal giro y te encuentras en un callejón sin salida.",
"Te acercas a la fuente para observarla más de cerca. Está tan abandonada como el resto de cosas en la isla, pero todavía tiene agua dentro.",
"Decides analizar la fuente más de cerca por si acaso alguien tiró algo dentro que pueda ayudarte a descubrir lo que sucede en esta isla. Notas algo extraño…", 
"Tomas el camino hacia la colina, la cual sostiene una enorme torre en espiral que se ve a kilometros de distancia",
"mientras escalas la torre tienes vista de toda la isla, estas muy alto.",
"Llegas al final de la escalera y solo encuentras una especie de altar en la cima con algo en el medio.",
"En el altar encuentras y libro, parece viejo y no puedes entender los simbolos en los que está escrito.",
"Decides dejarlo y vuelves a tu barco buscando olvidar todo el tiempo perdido solo para encontrarte con un libro de garabatos, pero no puedes evitar sentir que alguien... o algo... te siguio desde la isla.",
"te sientes más seguro llevandotelo, lo tomas y te lo llevas de regreso a tu barco, puede ser que este libro tenga una explicacion sobre lo que esta pasando. ",
};

String [] choichesTxt = { "PRESIONA (1).INICIAR", 
"HAZ EN CUALQUIER MOMENTO (CLICK) O PRESIONA (2) AHORA PARA VER LOS .CRÉDITOS",
"1. Dar media vuelta e irse", 
"2. Ir hacia la ciudad", 
"1.Nada debería salir mal", 
"1. Hacia el acantilado", 
"3. Hacia la colina", 
"4. Explorar la ciudad", 
"2. Acercarse a la fuente", 
"1.Debes acercarte al agua", 
"1.Necesitas acercarte", 
"1.Intenta esconderte", 
"1.No puedes escapar", 
"1.Observar más de cerca", 
"1.Hay algo en el agua", 
"1.subir", 
"1.seguir subiendo",
"1.acercarte", 
"1. Lo dejas", 
"2. Te lo llevas"  
};



int maxImages = 15;
PImage[] fondos = new PImage[maxImages];
int imageIndex = 0;


  
PFont fuente;
int estado;

void setup (){
  frameRate(12);
  size(800,600);
  background (0);
  
  for(int i = 0; i < fondos.length; i++){
    fondos[i] = loadImage("c_" + i + ".png");
  }
  
  
  //carga de fuente e imagenes
  fuente= loadFont("DotGothic16-Regular-48.vlw");
  //inicializacion
  textFont(fuente);
  estado=0;
}
void draw (){

  
  println (estado);
  //println (imageIndex);
  
  image(fondos[imageIndex],0,0, width ,height);
  
  pushStyle();
  fill(0,0,0,70);
  rect(70,400,650,400);
  popStyle();
  
  textSize (13);
  fill(255);
  
  if(estado == 0){//intro
  
  text(storyTxt [0],80,420,640,500);
  
  text(choichesTxt [0],80,490);
  text(choichesTxt [1],80,520);
  }
  else if(estado == 1){//puerto
  
  text(storyTxt [1],80,420,640,500);
  
  text(choichesTxt [2],80,490);
  text(choichesTxt [3],80,520);
  }
  else if(estado == 2){//te vas
  
  text(storyTxt [2],80,420,640,500);
  
  text(choichesTxt [4],80,490);
  
  }
  else if(estado == 3){//ciudad
  
  text(storyTxt [3],80,420,640,500);
  
  text(choichesTxt [5],80,490);
  text(choichesTxt [8],80,520);
   text(choichesTxt [6],80,550);
  text(choichesTxt [7],80,580);
  }
  else if(estado == 4){//acantilado
  
  text(storyTxt [4],80,420,640,500);
  
  text(choichesTxt [9],80,490);
  }
  else if(estado == 5){// acantilado (cerca)
  
  text(storyTxt [5],80,420,640,500);
  
  text(choichesTxt [10],80,490);
  }
  else if(estado == 6){// fuente
  
  text(storyTxt [8],80,420,640,500);
  
  text(choichesTxt [13],80,490);
  }
  else if(estado == 7){// fuente (cerca)
  
  text(storyTxt [9],80,420,640,500);
  
  text(choichesTxt [14],80,490);
  }
  else if(estado == 8){// base colina
  
  text(storyTxt [10],80,420,640,500);
  
  text(choichesTxt [15],80,490);
  }
  else if(estado == 9){// subida
  
  text(storyTxt [11],80,420,640,500);
  
  text(choichesTxt [16],80,490);
  }
  else if(estado == 10){// cima
  
  text(storyTxt [12],80,420,640,500);
  
  text(choichesTxt [17],80,490);
  }
  else if(estado == 11){// altar
  
  text(storyTxt [13],80,420,640,500);
  
  text(choichesTxt [18],80,490);
  text(choichesTxt [19],80,520);
  }
  else if(estado == 12){// ciudad
  
  text(storyTxt [6],80,420,640,500);
  
  text(choichesTxt [11],80,490);
  }
  else if(estado == 13){// callejon
  
  text(storyTxt [7],80,420,640,500);
  
  text(choichesTxt [12],80,490);
  }
  
  else if(estado == 15){// final 1
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
  text("Final 1",80,420,640,500);
  
  text("click",80,490);
  }
  else if(estado == 16){// final 2
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
 text("Final 2",80,420,640,500);
  
  text("click",80,490);
  }
  else if(estado == 17){// final 3
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
 text("Final 3",80,420,640,500);
  
  text("click",80,490);
  }
  else if(estado == 18){// final 4
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
  text("Final 4",80,470,640,500);
  
  text(storyTxt [14],80,420,640,500);
  
  text("click",80,550);
  }
  else if(estado == 19){// Final 5
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
  text("Final 5",80,470,640,500);
  
  text(storyTxt [15],80,420,640,500);
  
  text("click",80,550);
  }
  else if(estado == 20){// final 6
  pushStyle();
  fill(0);
  rect(0,0,800,600);
  popStyle();
  text("Final 6",80,420,640,500);
  
  text("click",80,490);
  }
  
}

void mouseClicked (){ 

  if (estado == 14){
    estado =0;
    imageIndex =0;
  }
  else{
    estado =14;
    imageIndex =14;
  }

}

void keyPressed(){
  if(estado == 0){
    if( key == '1' ){ //a inicio
      estado +=1;
      imageIndex+=1;
      } else if( key == '2' ){ //a creditos
      estado = 14;
      imageIndex = 14;
      }
      
    }else if(estado == 1){//puerto
    if( key == '1' ){ //vuelta atras
      estado =2;
      imageIndex =2;
      } else if( key == '2' ){ //ir ciudad
      estado = 3;
      imageIndex = 3;
      }
      
    }else if(estado == 3){ //ciudad
    if( key == '1' ){ //ir acantilado
      estado =4;
      imageIndex =4;
      
      } else if( key == '2' ){ //ir fuente, estado =
      estado =6;
      
      }else if( key == '3' ){//ir colina
      estado =8;
      imageIndex =7;
      
      }else if( key == '4' ){ //explorar
      estado =12;
      imageIndex =12;
      
      }
    }else if(estado == 6){ //fuente
    if( key == '1' ){ //acercarse
      estado =7;
      imageIndex =6;
    }
      }
      ///finales
      else if(estado == 2){ 
    if( key == '1' ){ //final 1
      estado =15;
      }
    }else if(estado == 5){ 
    if( key == '1' ){ //final 2
      estado =16;
      }
    }else if(estado == 7){ 
    if( key == '1' ){ //final 3
      estado =17;
      }
    }else if(estado == 11){ //altar
    if( key == '1' ){ //Final 4
      estado =18; 
      
    }else if( key == '2' ){//Final 5
    estado =19;
    
      }
    }else if(estado == 13){ //final 6
    if( key == '1' ){
      estado =20;
      }
    }
      
      
    else if(estado == 4  || estado == 8 || estado == 9 || estado == 10 || estado == 12){
     if( key == '1' ){
      estado +=1;
      imageIndex+=1;
      
      }
    }
}
