float x,y;
  float dx,dy;
  float t;
  color c;
  color a;
  
  Enemigo(){
    this.x = random(100,300);
    this.y = random(100,300);
    this.dx = random(-2,2);
    this.dy = random(-2,2);
    this.t = 100;
    this.c= color(0,50,200);
    this. a = color(255,50,200);
  }
  
  void display(){
    noStroke();
    if (dist(personaje.x,personaje.y,this.x,this.y)<personaje.t/2 + this.t/2){
      fill(this.a);
    }
    else{
      fill(this.c);
    }
    ellipse(this.x,this.y,this.t,this.t);
  }
  
  void movimiento(){
    this.x += this.dx;
    this.y += this.dy;
    rebotar();
  }
  
  void rebotar(){
    if (this.x<0+this.t/2||this.x>width-this.t/2){
      this.dx *= -1;
    }
    
    if (this.y<0+this.t/2||this.y>height-this.t/2){
      this.dy *= -1;
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
