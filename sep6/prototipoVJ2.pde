class Avatar{
  //atributos
  float x,y;
  float v;
  color c;
  int t;
  //constructor
  Avatar(){
    this.x = width/2;
    this.y = height/2;
    this.v = 5;
    this.c = color(255,0,0);
    this.t = 40;
  }
  
  //métodos
  void display(){
    fill(this.c);
    noStroke();
    ellipse(this.x,this.y,this.t,this.t);
  }
  
  void movimiento(int n_){
    switch(n_){
      case 0:
        this.y -= this.v;
      break;
      case 1:
        this.x += this.v;
      break;
      case 2:
        this.x -= this.v;
      break;
      case 3:
        this.y += this.v;
      break;
    }
  }
  
  void limites(){
    this.x = constrain(this.x,0+this.t/2,width-this.t/2);
    this.y = constrain(this.y,0+this.t/2,height-this.t/2);
  }
  
}


class Objetivo{
  //atributos
  int x,y;
  int t;
  boolean estado;
  color c;
  //métodos
  Objetivo(){
    this.x = floor(random(400));
    this.y = floor(random(400));
    this. t = 10;
    this.c = color(255);
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipse(this.x,this.y,this.t,this.t);
    estado = colision(personaje);
  }
  
  boolean colision (Avatar a_){
    float d= dist(this.x,this.y,a_.x,a_.y);
    if (d<this.t/2 + a_.t/2){
      return true;
    }
    else {
      return false;
    }
  }
  
}

class Enemigo{
 float x,y;
 float dx,dy;
 float t;
 color c;
 float a;
 float v;
 
 Enemigo(){
   this.x = random(50,350);
   this.y = random(50,350);
   this.t = 100;
   this.a = random(TWO_PI);
   this.v = 0.5;
   this.c = color(0,0,255);
   this.dx = cos(this.a)*this.v;
   this.dy = sin(this.a)*this.v;
 }
 
 void display(){
   noStroke();
   fill(this.c);
   ellipse(this.x,this.y,this.t,this.t);
 }
 
 void mover(){
   this.x += this.dx;
   this.y += this.dy;
   rebota();
 }
 
 void rebota(){
   if(this.x-this.t/2<0 || this.x+this.t/2>width ){
     dx*= -1;
   }
   if (this.y-this.t/2<0|| this.y+this.t/2>height){
     dy *=-1;
   }  
 }
 
 
 boolean colision(Avatar a_){
   float c1 = this.x - a_.x;
   float c2 = this.y - a_.y;
   float h =sqrt(sq(c1)+sq(c2));
   if(h<= this.t/2 + a_.t/2){
     return true;
   }
   else{
     return false;
   }
 }
 
 
}

void move(){
  personaje.x = constrain(personaje.x,0+personaje.t/2,400-personaje.t/2);
  personaje.y = constrain(personaje.y,0+personaje.t/2,400-personaje.t/2);
  if (keyPressed){
    switch(key){
      case 'w':
      personaje.y-=3;;
      break;
      case 's':
      personaje.y+=3;
      break;
      case 'a':
      personaje.x-=3;
      break;
      case 'd':
      personaje.x+=3;
      break;
    }
  }
}


Avatar personaje;
ArrayList <Objetivo> objetivos;
ArrayList <Enemigo> enemigos;
int contador = 0;
float n;
void setup(){
  size(400,400);
  personaje = new Avatar();

  
  objetivos = new ArrayList<Objetivo>();
  enemigos = new ArrayList <Enemigo>();
  for (int i=0; i<30;i++){
    objetivos.add(new Objetivo());
  }
  
  for (int i= 0; i<2; i++){
    enemigos.add(new Enemigo());
  }
}

void draw(){
  n+=0.01;
  background(255);
  for(int i =0; i<width; i+=5){
    for(int j = 0; j<height; j+= 5){
      //fill(noise(i*0.005,j*0.005,n)*255,noise(i*0.005+1,j*0.005+1,n)*255,noise(i*0.005+2,j*0.005+2,n)*255);
      if(((i/5)+(j/5))%2 == 0){
        fill(0);
      }
      else{
        fill(255);
      }
      noStroke();
      rect(i,j,5,5);
    }
  }
  
  personaje.limites();
  personaje.display();

  
  for(Objetivo o:objetivos){
    o.display();
  }
  
  for (int i = 0; i<objetivos.size(); i++){
    if (objetivos.get(i).estado){
      objetivos.remove(i);
      contador++;
      println(contador);
    }
  }
  
  for (Enemigo e:enemigos){
    e.display();
    e.mover();
    if(e.colision(personaje)){
        println("perdiste");
    }
  }
  
  
  
  if (mousePressed){
     println("continuo");
  }
  
  if (keyPressed){
    switch(key){
    case 'w':
      personaje.movimiento(0);
    break;
    case 'a':
      personaje.movimiento(2);
    break;
    case 's':
      personaje.movimiento(3);
    break;
    case 'd':
      personaje.movimiento(1);
    break;
  }
  }
}
