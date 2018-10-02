//utilizando el arreglo pixels[] p2

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
    
    //de esta forma acceso a la posición en x,y de cada pixel    
    int x = i%imagen.width;
    int y = i/imagen.width;
    
    //algunas operaciones básicas, comentar y descomentar para ver los resultados
    
    // utilizo la función sin(x) para cambiar el color rojo,
    //controlo la amplitud y frecuencia con el mouse
    //float amp = map(mouseX,0,width,0,255);
    //float frq = map(mouseY,0,height,0.00001,0.5);
    //pixels[i] = color(r+sin(x*frq)*amp,g,b);
 
    // utilizo la función sin(y) para cambiar el color verde,
    //controlo la amplitud y frecuencia con el mouse
    //float amp = map(mouseX,0,width,0,255);
    //float frq = map(mouseY,0,height,0.00001,0.5);
    //pixels[i] = color(r,g+sin(y*frq)*amp,b);
    
    //utilizo la distancia del pixel respecto al mouse para generar un radial
    //con el canal azul
    float d = dist(mouseX,mouseY,x,y);
    pixels[i] = color(r,g,b+sin(d*0.03)*80);
  }
  
  //actualizo los cambios a la matriz de processing
  updatePixels();
}
