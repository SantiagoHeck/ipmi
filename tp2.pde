PImage nba1, nba2, nba3;
float contador, posX1, posX2, posX3, movimiento, posAtras;
int estado;
String texto1, texto2, texto3, boton;
PFont fuente;
                                                                                                             //Nombre: Santiago Heck
                                                                                                             //Legajo: 119053/6
                                                                                                             //Comision: 2
void setup (){
size( 640, 480 );
nba1 = loadImage("nba1.jpg");
nba2 = loadImage("nba2.jpg");
nba3 = loadImage("nba3.jpg");
contador = 0;
texto1 = "Nba2k24 es un juego de basquet modo simulacion";
texto2 = "Tiene varios modos de juego, incluido modo online";
texto3 = "Se actualiza a tiempo real mientras este la temporada en juego";
fuente = loadFont ("CourierNewPSMT-48.vlw");
posX1 = 70;
posX2 = 24;
posX3 = 25;
posAtras = -500;
movimiento = 20;
}

void draw (){
contador = map (frameCount, 1, 2, 1, 2);
background (0);
fill (228, 232, 35);
textFont (fuente);
textSize (50);
if (contador < 490){
image (nba1, 0,0, 740, 530);
textSize (23);
text (texto1, posX1, 56, 500, 200);
if (contador > 460){
posX1 += movimiento;
posX2 = posAtras;}
}
else if (contador < 1100){
image (nba2, 0, 0, 740, 530);
textSize (27);
text (texto2, posX2, 56, 590, 200);
if (contador > 460){
posX2 += movimiento;
if (posX2 >=24){
posX2 = 24;
movimiento = 0;
posX3 = posAtras;}
}
}
else if (contador < 1900){
image (nba3, 0, 0, 740, 530);
textSize (27);
text (texto3, posX3, 31, 590, 200);
if (contador > 1050){
movimiento = 20;
posX2 += movimiento;
posX3 += movimiento;}
if (posX3 >= 25){
posX3 = 25;
}
}
// Boton superficial
else if (contador > 1900){
fill (0);
text ("Santiago Heck", 320, 240);
fill (190, 194, 16);
rect (410, 355, 190, 90);
fill (255);
textSize (20);
text ("Inicio", 505, 393);
}
// Cambio de color del boton
if (contador > 1900 && mouseX > 410 && mouseY < 355+90){
fill (235, 240, 119);
rect (415, 360, 180, 80);
textSize (20);
fill (0);
text ("Inicio", 505, 393);
}
}
void mousePressed (){
frameCount += 500;
// Boton
if (frameCount > 1900 && mouseX > 410 && mouseY < 355+90){
fill (219, 227, 23);
rect (410, 355, 190, 90);
frameCount = 0;
posX1 = 70;
posX2 = 24;
posX3 = 25;
movimiento = 20;
}
println (mouseX, ""+"", mouseY);
println (frameCount);
}
