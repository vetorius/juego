PImage fondo;
int px = 0;

void setup(){
  size(200,237);
  
  fondo = loadImage("fondo.png");
}

void draw(){
  background(0);
  image(fondo,px,0);
  if (px < -440){
    image(fondo,px+640,0);
  }
  if (px < -640){px=0;}
  if( get(mouseX,mouseY) == -8409743){
    text("verde",10,10);
  }
  px--;
}

void keyPressed() {
  if ((key == 'd' || key == 'D') && px > -440) {
      px -= 2 ;
    }
  if ((key == 'a' || key == 'A') && px < 0) {
      px += 2 ;
    }
}
