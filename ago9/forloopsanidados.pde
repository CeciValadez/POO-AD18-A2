size(400,400);
background(255);

//dos for loops anidados me permiten usar las variables init (i, j)
// para establecer la posición de mi geometría 
for (int i = 0; i<400; i+=20){
  for (int j = 0; j<400; j+=20){
    noStroke();
    fill(random(255),random(255),random(255));
    rect(i,j,20,20);
  }
}
