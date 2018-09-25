//importar las librerías
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

//un solo objeto
Caja una;
//una colección 
ArrayList <Caja> cajas;

void setup(){
  size(400,400);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,-10);
  una= new Caja(200,200,50,30);
  cajas = new ArrayList<Caja>();
}


void draw(){
  background(255);
  box2d.step();
  una.display();
  /*
 for (Caja c:cajas){
   c.display();
 }
 */
 for (int i = cajas.size()-1; i>=0; i--){
   boolean r = cajas.get(i).estaEnPantalla();
   if (r){
     cajas.get(i).display();
   }
   else{
     cajas.remove(i);
   }
 }
 println(cajas.size());
}


void mousePressed(){
  Caja c = new Caja(mouseX,mouseY, 50,30);
  cajas.add(c);
}
