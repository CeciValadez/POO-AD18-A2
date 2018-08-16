//variables
float x;
float y;
float t;
float dx;

float r,g,b;

void setup(){
  size(400,400);
  x = width/2;
  y = height/2;
  t = 50;
  r = random(255);
  g = random(255);
  b = random(255);
  dx = 1;
}

void draw(){
  background(255); 
  dibuja(x,y,t);
  mover();
}

void dibuja(float x_, float y_,  float t_ ){
  fill(r,g,b);
  noStroke();
  ellipse(x_,y_,t_,t_);
}

void mover(){
  x += dx;
  if (x>400){
    dx *= -1;
  }
  else if(x<0){
    dx *= -1;
  }
}
