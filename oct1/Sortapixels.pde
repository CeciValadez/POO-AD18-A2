//utilizando el arreglo pixels[] p4

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
  //pixels[], almacena la información de color de cada pixel, en este caso el segundo
  println(imagen.pixels[2]);
  
  //acomodo los pixeles de mayor a menor
  imagen.loadPixels();
  imagen.pixels = sort(imagen.pixels);
  imagen.updatePixels();
}

void draw(){
  image(imagen,0,0);
}
