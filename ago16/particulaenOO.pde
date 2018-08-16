class Particula{
  //atributos;
  float px;
  float py;
  float t;
  float r,g,b;
  float dx;
  
  //Constructor
  Particula(float px_, float py_, float t_, float r_,float g_, float b_, float dx_){
    px = px_;
    py= py_;
    t = t_;
    r = r_;
    g = g_;
    b = b_;
    dx = dx_;
  }
  
  // Métodos
  void display(){
    noStroke();
    fill(r,g,b);
    ellipse(px,py,t,t);
  }
  
  void mover(){
    px +=dx;
    rebota();
  }
  
  void rebota(){
    if (px>400){
      dx*= -1;
    }
    else if (px<0){
      dx*= -1;
    }
  } 
}

//varibles globales
Particula una;
Particula otra;

void setup(){
  size(400,400);
  una = new Particula(200,200,100,255,0,0,0.5);
  otra = new Particula(0,300,30,0,255,100,2);
}

void draw(){
  background(255);
  una.display();
  una.mover();
  otra.display();
  otra.mover();
  println(una);
}
