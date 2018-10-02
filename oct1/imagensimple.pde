//imagen simple

//declaro mi objeto PImage, este almacena en la memoria la representación de los pixeles
//de la imagen
PImage imagen;

void setup(){
  size(970,450);
  //inicializo el objeto con la función loadImage(), pasando el nombre del archivo
  //almacenado en /data
  imagen = loadImage("gato.jpg");
}

void draw(){
  //para sólo dibujar la imagen, paso el PImage como parametro a la funcion image();
  image(imagen,0,0);
}
