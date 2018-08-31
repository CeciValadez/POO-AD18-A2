class Avatar{
  //atributos
  int x,y;
  int t;
  int v;
  color c;
  //metodos  
  Avatar(){
    this.x = width/2;
    this.y = height/2;
    this.t = 40;
    this.c = color(255,0,0);
    this.v = 5;
  }
  /*
  void mover(){
  }
  */
  
  void mDerecha(){
    this.x+=this.v;
  }
  
  void mIzquierda(){
    this.x-=this.v;
  }
  
  void mArriba(){
    this.y-= this.v;
  }
  
  void mAbajo(){
    this.y+=this.v;
  }
  
  void limites(){
  this.x = constrain(this.x,0,400-this.t);
  this.y = constrain(this.y,0,400-this.t);
  }
  
  void display(){
    fill(this.c);
    noStroke();
    rect(this.x,this.y,this.t,this.t);
  }
}


class Objetivo{
  int x,y;
  int d;
  
  Objetivo(){
    this.x = round(random(400));
    this.y = round(random(400));
    this.d = 10;
  }
  
  void display(){
    fill(0);
    ellipse(this.x,this.y,this.d,this.d);
  }
}


class Enemigo{
  int x,y;
  int d;
  
  Enemigo(){
  }
  
  void moverse(){
  }
  
  void display(){
  }
}

Avatar personaje;
ArrayList <Objetivo> objetivos;

void setup(){
  size(400,400);
  personaje = new Avatar();
  objetivos = new ArrayList <Objetivo>();
  for (int i= 0; i<20; i++){
    objetivos.add(new Objetivo());
  }
}

void draw(){
  background(255);
  personaje.display();
  personaje.limites();
  
  for (Objetivo o:objetivos){
    o.display();
  }
 
  
  if(keyPressed){
    switch(key){
    case 'a':
      personaje.mIzquierda();
    break;
    case 'w':
      personaje.mArriba();
    break;
    case 's':
      personaje.mAbajo();
    break;
    case 'd':
      personaje.mDerecha();
    break;
  }
  
  }
  int px =mouseX;
  int py = mouseY;
  
  //ellipse(constrain(px,100,300),py,20,20);
  /*if(mousePressed){
    println(mouseX);
  }
  */
}

/*
void mousePressed(){
  println("mouse presionado");
}
*/

/*
void keyPressed(){
  println(key);
  switch(key){
    case 'a':
      personaje.mIzquierda();
    break;
    case 'w':
      personaje.mArriba();
    break;
    case 's':
      personaje.mAbajo();
    break;
    case 'd':
      personaje.mDerecha();
    break;
  }
  
}
*/
