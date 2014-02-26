class personaje {
  
  float posY;  // posición en Y del personaje
  float velY = 0;  // velocidad en Y del personaje
  PImage bird; // imagen del personaje
  
  personaje(){
    posY = height/2;
    bird = requestImage("./data/bird.png");
  }
  
  void mover(){
    // recalculamos la velocidad
    if (velY < 2){
      velY = velY + 0.2;
    }
    // recalculamos la posicion
    posY = posY + 0.3 * velY;
    
    // colisión con el techo
    if (posY < 16){
      velY = 0;
      posY = 16;
    }
    // colisión con el suelo
    if (posY > (height-16)){
      velY = 0;
      posY = height - 16;
    }
  }
  
  void mostrar(){
    imageMode(CENTER);
    image(bird, width/2 ,posY );
//    ellipse(width/2, posY,15,15);
  }
  
  void impulsar(){
    if (velY > -6) {
      velY = velY - 3;
    }
  }
}
