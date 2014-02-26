PImage fondo;
int px = 0;
personaje mipajaro;

void setup(){
  size(200,237);
  fondo = loadImage("fondo.png");
  mipajaro = new personaje();
}

void draw(){
  background(0);
  imageMode(CORNER);
  image(fondo,px,0);
  if (px < -440){
    image(fondo,px+640,0);
  }
  if (px < -640){
    px=0;
  }
  mipajaro.mover();
  mipajaro.mostrar();
  px--;
}

//void keyPressed() {
//  if ((key == 'd' || key == 'D') && px > -440) {
//      px -= 2 ;
//    }
//  if ((key == 'a' || key == 'A') && px < 0) {
//      px += 2 ;
//    }
//}

void mousePressed(){
  mipajaro.impulsar();
}
