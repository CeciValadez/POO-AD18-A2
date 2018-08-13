//variables globales
float foo = 0; 
float delta = 2;
float giro;

//setup: establecer las condiciones de inicio de mi programa
void setup(){
  size(400,400);
  background(255);
  //frameRate(1);
}


//draw: codigo que se va a ejecutar una y otra vez mientras el programa este en ejecución
void draw(){
  giro+=0.01;
  background(255);
  foo+=delta;
  
  //println(frameRate);
  //println(foo);
  
  //condicional: evalua un estado booleano y ejecuta alguna instrucción
  particula(foo,height/2,200);
  if (foo>400){
    delta = -2;
  }
  else if(foo<0){
    delta = 2;
  }
  
}

void particula(float x, float y, float t){
  //fill(25,60,255);
  noFill();
  strokeWeight(2);
  rectMode(CENTER);
  
  pushMatrix();
  translate(x,y);
  for(int i = 0; i<t; i+=5){
    pushMatrix();
    if (i/5%2 == 1){
      rotate(giro);
    }
    else{
      rotate(-giro);
    }
    
    stroke(i,0,0);
    rect(0,0,i,i);
    popMatrix();
  }
  popMatrix();
}
