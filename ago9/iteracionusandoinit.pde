size(400,400);
background(255);
//puedo usar el valor de la variable init dentro de mi proceso
//en este caso como parámetro para establecer la posición y color de mi geometría 

for (int i = 0; i<400; i+=5){
  fill(i,0,0);
  noStroke();
  ellipse(i,200+sin(i*0.05)*80,20,20);
}
