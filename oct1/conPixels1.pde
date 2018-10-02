//utilizando el arreglo pixels[] p1

//declaro mi objeto PImage, este almacena en la memoria la representación de los pixeles
//de la imagen
PImage imagen;

void setup(){
  size(970,450);
  //inicializo el objeto con la función loadImage(), pasando el nombre del archivo
  //almacenado en /data
  imagen = loadImage("gato.jpg");
  //este atributo almacena el ancho en pixeles de la imagen
  println(imagen.width);
  //este atributo almacena el alto en pixeles de la imagen
  println(imagen.height);
  //pixels[], almacen la información de color de cada pixel, en este caso el segundo
  println(imagen.pixels[2]);
}

void draw(){
  //operaciones con los pixeles de la imagen
  
  //con este método cargo la información de color en el arreglo pixels[] de la imagen
  imagen.loadPixels();
  
  //con este método cargo la información de color en el arreglo pixels[] de mi matriz de processing
  loadPixels();
  //itero por cada pixel de mi imagen
  for (int i=0; i<imagen.pixels.length;i++){
    //almaceno el color de cada pixel en la variable c
    int c = imagen.pixels[i];
    //separo las componentes de rojo, verde y azul
    float r = red(c);
    float g = green(c);
    float b = blue(c);
    
    //algunas operaciones básicas, comentar y descomentar para ver los resultados
    
    //asigno solo el canal rojo  a cada pixel de la matriz de processing:
    //pixels[i] = color(r,0,0); 
    
    //cambio los colores:
    //pixels[i] = color(g,b,r);
    //pixels[i] = color(b,r,g);
    
    //módifico un offset fijo a cada color (r=mouseX, b= mouseY
    float offsetR= map(mouseX,0,width,-255,255);
    float offsetB= map(mouseY,0,height,-255,255);
    pixels[i] = color(r+offsetR,g,b+offsetB);
    
  }
  
  //actualizo los cambios a la matriz de processing
  updatePixels();
}
