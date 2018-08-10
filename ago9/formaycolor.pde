// establece el tamaño de mi ventana de programa
size(400,400);

//modifica el fondo de mi sketch RGB
background(240,0,120);

// modifica el color de relleno de mi geometría RGBA
fill(0,127,255,125);

// determina el color de la linea de contorno de la geometría
stroke(0,245,89);

// para eliminar relleno o contorno;
//noFill();
//noStroke();

// dibujar un rectángulo en x,y de tamaño w,h;
rect(100,100,100,100);

//dibuja una elipse en x,y, de tamaño w,h
fill(255,0,0,127);
//modifica la forma en la que se dibuja la elipse 
//ellipseMode(CORNER);

//modifica el ancho de a línea de contorno
strokeWeight(0.1);
ellipse(100,100,100,100);
strokeWeight(10);
stroke(255);

// traza una linea de x1,y1 a x2,y2
line(0,0,400,400);
fill(0);
noFill();

//traza una curva de bezier
bezier(0,400,200,300,0,200,400,0);
