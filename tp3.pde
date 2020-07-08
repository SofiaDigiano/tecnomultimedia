String estado;
PImage inicio, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, creditos;
PFont fuente;

void setup() {

  size(800, 600);
  fuente = loadFont( "Gungsuh-48.vlw" );
  textFont( fuente);

  estado = "comienzo";
  inicio = loadImage("inicio.jpg");
  pantalla1 = loadImage("pantalla1.jpg");
  pantalla2 = loadImage("pantalla2.jpg");
  pantalla3 = loadImage("pantalla3.jpg");
  pantalla4 = loadImage("pantalla4.jpg");
  pantalla5 = loadImage("pantalla5.jpg");
  pantalla6 = loadImage("pantalla6.jpg");
  pantalla7 = loadImage("pantalla7.jpg");
  pantalla8 = loadImage("pantalla8.jpg");
  pantalla9 = loadImage("pantalla9.jpg");
  pantalla10 = loadImage("pantalla10.jpg");
  creditos = loadImage("creditos.jpg");
}

void draw() {
  //INICIO
  if (estado.equals("comienzo")) { 
    image(inicio, 0, 0);
    textSize(20);
    text("Nunca sabes con lo que te puedes \n   encontrar cuando te pierdes\n            en el bosque", 220, 350);
  }
  if (estado.equals("parte1")) { 
    image(pantalla1, 0, 0);
    textSize(15);
    text("Llegaste hasta este bosque tu misión es descubrir \n sus secretos. Deberás tomar diferentes decisiones \n para lograrlo.", 50, 525);
  } else if (estado.equals("parte2")) { 
    image(pantalla2, 0, 0);
    textSize(15);
    text("El camino se divide al final del mismo. \n ¿Cuál tomas?.", 50, 525);
  } else if (estado.equals("parte3")) { 
    image(pantalla3, 0, 0);
    textSize(15);
    text("Ves un brillo a la derecha. \n ¿Te acercas a ver o sigues?.", 50, 525);
  }
  if (estado.equals("parte4")) { 
    image(pantalla4, 0, 0);
    textSize(15);
    text("Descubriste una tribu..\n son Simbus, y protegen el bosque", 50, 525);
  }
  if (estado.equals("parte5")) { 
    image(pantalla5, 0, 0);
    textSize(15);
    text("Sigues hacia el final y escuchas unos cantos. \n Pero el camino es largo, debes continuar", 50, 525);
  }
  if (estado.equals("parte6")) { 
    image(pantalla6, 0, 0);
    textSize(15);
    text("Es WENDIGO. \n El dios del bosque.", 50, 525);
  }  if (estado.equals("parte7")) { 
    image(pantalla7, 0, 0);
    textSize(15);
    text("El camino vuelve a dividirse. \n ¿Cuál eliges?", 50, 525);
  }
  if (estado.equals("parte8")) { 
    image(pantalla8, 0, 0);
    textSize(15);
    text("Ups camino cerrado, \n deberás comenzar de nuevo.", 50, 525);
  }
  if (estado.equals("parte9")) { 
    image(pantalla9, 0, 0);
    textSize(15);
    text("Ya falta poco. \n Sigue..", 50, 525);
  }
  if (estado.equals("parte10")) { 
    image(pantalla10, 0, 0);
    textSize(15);
    text("Las ballenas nadan en el cielo. \n Las luciérnagas vuelan en el mar..", 50, 525);
  }
  if (estado.equals("final")) { 
    image(creditos, 0, 0);
    textSize(25);
    text("Tecno. M. 1.", 330, 405);
  }
  println(estado);
}





void mousePressed() {
  //boton centro
  if (mouseX>255 && mouseX<525 && mouseY>480 && mouseY< 555) {  
    if (estado.equals("comienzo")) {
      estado = "parte1";
    } else if (estado.equals("final")) {
      estado = "comienzo";
    }
  }
  //boton solo
  if (mouseX>600 && mouseX<750 && mouseY>480 && mouseY< 555) { 
    if (estado.equals("parte1")) {
      estado = "parte2";
    } else if (estado.equals("parte4")) {
      estado = "final";
    } else  if (estado.equals("parte5")) {
      estado = "parte6";
    } else if (estado.equals("parte6")) {
      estado = "final";
    } else if (estado.equals("parte8")) {
      estado = "final";
    } else  if (estado.equals("parte9")) {
      estado = "parte10";
    } else if (estado.equals("parte10")) {
      estado = "final";
    }
    else if (estado.equals("parte2")) {
      estado = "parte7";
    }
    else if (estado.equals("parte7")) {
      estado = "parte9";
    }
  }



  //boton dos caminos pantalla 2 y pantalla 7
  //pantalla2 derecha 
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) {
    if (estado.equals("parte2")) {
      estado = "parte3";
    } else if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
      if (estado.equals("parte3")) {
        estado = "parte4";
      }
    }
  }
  if (mouseX>630 && mouseX<780 && mouseY>470 && mouseY< 550) { 
    if (estado.equals("parte3")) {
      estado = "parte5";
    }
  }
  
 //pantalla 2 izq
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) {
    if (estado.equals("parte2")) {
      estado = "parte7";
    }  else if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
      if (estado.equals("parte7")) {
        estado = "parte8";
      }
    }
  }
  if (mouseX>490 && mouseX<610 && mouseY>470 && mouseY< 550) { 
    if (estado.equals("parte7")) {
      estado = "parte9";
    }
  }
  
}
