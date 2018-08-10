size(400,400);

/* iteración:  repetir un proceso un número determinado de veces
en la sintaxis del for loop hay tres componentes
init: las condiciones iniciales en este caso la variable i = 0;
test: las condiciones para terminar con el proceso de iteracion en este caso que i < 10000
update: las reglas para actualizar la variable, en este caso el valor de i se incrementa en uno
*/
for (int i = 0; i<10000; i ++){
  // asigna un valor aleatorio a la variable entre 0 y 400
  float foo = random(400);
  float bar = random(400);
  float baz = random(100);
  float qux = random(100);
  float c = random(255); 
  stroke(255,c,c);
  noFill();
  strokeWeight(random(10));
  rect(foo,bar,baz,qux);
}
