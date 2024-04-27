PImage paisaje;

void setup(){
size (800, 400);
paisaje = loadImage ("Paisajeamanecer.jpg");

}

void draw (){
image (paisaje, 0, 0, 400, 400);
println (mouseX + "/" + mouseY);
fill (211, 121, 51);
noStroke ();
rect (400, 0, 799, 236);
fill (249, 255, 93);
ellipse (600, 230, 400, 290);
fill (30, 29, 39);
rect (400, 237, 799, 237);
fill (255, 116, 3);
rect ( 400, 219, 799, 13);
fill (0, 0, 0);
rect (400, 232, 799, 5);



}
