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

    
    //de esta forma acceso a la posición en x,y de cada pixel    
    int x = i%imagen.width;
    int y = i/imagen.width;
    
    //algunas operaciones cambiando pixeles, comentar y descomentar para ver los resultados
    //deformo la imagen con la función sin(y);
    //lo controlo con el mouse
    /*
    float amp = map(mouseX,0,width,0,200);
    float freq = map(mouseY,0,height,0.0001,1);
    int xt = x+ceil(sin(y*freq)*amp);
    if (xt<0){
      xt = imagen.width + xt;
    }
    xt = xt%imagen.width;
    pixels[i] = imagen.pixels[xt+y*imagen.width];
    */
    
   //deformo la imagen con la función de sin(x);
    //lo controlo con el mouse
    
    float amp = map(mouseX,0,width,0,200);
    float freq = map(mouseY,0,height,0.0001,1);
    int yt = (y + ceil(sin(x*freq)*amp))%imagen.height;
    if (yt<0){
      yt = imagen.height + yt;
    }
    pixels[i] = imagen.pixels[x+yt*imagen.width]; 
    
   
  }
  
  //actualizo los cambios a la matriz de processing
  updatePixels();
}
