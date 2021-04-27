/*
María Clara Saloña
85207/7
Comisión 3 2021
Prof. David 
*/

//Tamaño de la pantalla y color de fondo
size(400,400);
background(255);

noStroke();

//Primarios
fill(255,255,0);
quad(200,200,165,175,200,120,235,175);
fill(0,0,255);
quad(200,200,165,175,125,240,200,240);
fill(255,0,0);
quad(200,200,235,175,275,240,200,240);

//Secundarios
fill(102,176,50);
triangle(200,120,125,240,125,155);
fill(253,83,8);
triangle(200,120,275,240,275,155);
fill(61,1,164);
triangle(125,240,275,240,200,285);

//Terciarios y circulo completo


fill(255,255,0);
quad(140,10,160,80,240,80,260,10);
fill(249,176,1);
quad(260,10,240,80,290,110,350,70);
fill(253,83,8);
quad(290,110,350,70,390,140,320,160);

fill(220,72,26);
quad(390,140,320,160,320,240,390,260);
fill(255,0,0);
quad(390,260,320,240,290,290,350,330);
fill(152,38,72);
quad(350,330,290,290,240,320,260,390);

fill(61,1,164);
quad(140,390,160,320,240,320,260,390);
fill(34,41,122);
quad(140,390,160,320,110,290,50,330);
fill(0,0,255);
quad(10,260,80,240,110,290,50,330);

fill(0,95,101);
quad(10,140,80,160,80,240,10,260);
fill(102,176,50);
quad(50,70,110,110,80,160,10,140);
fill(164,196,1);
quad(50,70,110,110,160,80,140,10);

//Nombres colores

textAlign(CENTER);
textSize(9);

fill(0);

text("AMARILLO",200,50);
text("NARANJA AMARILLENTO",255,55,70,70);
text("NARANJA",305,115,70,70);
text("NARANJA ROJIZO",320,190,70,70);
text("ROJO",305,275,70,70);
text("VIOLETA ROJIZO",255,320,70,70);
text("VIOLETA",165,350,70,70);
text("VIOLETA AZULADO",80,320,70,70);
text("AZUL",30,275,70,70);
text("VERDE AZULADO",10,190,70,70);
text("VERDE",25,120,70,70);
text("VERDE AMARILLENTO",75,55,70,70);
