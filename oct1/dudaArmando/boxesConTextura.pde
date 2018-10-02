import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


Box2DProcessing box2d;
PImage textura;
ArrayList<Box> boxes;

void setup() {
  size(400,400);
  textura = loadImage("cat.png");
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);
  boxes = new ArrayList<Box>();
}

void draw() {
  background(255);
  box2d.step();
  for (Box b: boxes) {
    b.display();
  }
}

void mousePressed(){
  Box p = new Box(mouseX,mouseY);
    boxes.add(p);
}
