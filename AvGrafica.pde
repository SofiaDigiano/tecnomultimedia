int estado=0;

class Aventura {
  //ARRAY IMAGENES 
  int cantidad = 12;
  PImage [] pantallas = new PImage [cantidad];
  String [] filenames = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg"};

  //VARIABLES  
  Botones botones;
  Textos textos;
  Luces luces;
  Juego juego;

  //CONSTRUCTOR
  Aventura() {
    textos = new Textos();
    botones = new Botones();
    luces = new Luces();
    juego = new Juego();
    //CARGA DE IMAGENES
    for (int i = 0; i < filenames.length; i++) {
      pantallas[i]= loadImage(filenames[i]);
    }
  }


  //FUNCIONES
  void draw() {
    /*Estados*/
    if (estado==0) { 
      pantallas(0, 0, 0);
      textos.mistextos(0, 250, 350);
    }
    if (estado==1) { 
      pantallas(1, 0, 0);
      textos.mistextos(1, 50, 525);
    }
    if (estado==2) { 
      pantallas(2, 0, 0);
      textos.mistextos(2, 420, 525);
    }
    if (estado==3) { 
      pantallas(3, 0, 0);
      textos.mistextos(3, 66, 525);
    }

    if (estado==4) { 
      pantallas(4, 0, 0);
      textos.mistextos(4, 50, 525);
    }
    if (estado==5) { 
      pantallas(5, 0, 0);
      textos.mistextos(5, 400, 525);
    }
    if (estado==6) { 
      pantallas(6, 0, 0);
      textos.mistextos(6, 50, 525);
      luces.dibujarluces();
    } else if (estado==7) { 
      pantallas(7, 0, 0);
      textos.mistextos(7, 50, 525);
    } else if (estado==8) { 
      pantallas(8, 0, 0);
      textos.mistextos(8, 338, 525);
    } else if (estado==9) { 
      pantallas(9, 0, 0);
      textos.mistextos(9, 50, 525);
    }
    if (estado==10) { 
      pantallas(10, 0, 0);
      textos.mistextos(10, 50, 525);
      luces.dibujarluces();
       }
       if(estado==12){
         juego.actualizar(this);
         juego.dibujar(this);
         juego.teclas(this);
                 
       }
    if (estado==11) { 
      pantallas(11, 0, 0);
      textos.mistextos(11, 330, 405);
    }
     println(estado);
    println(mouseX, mouseY);
  }

  //funcion de pantallas
  void pantallas(int i, int x, int y) {
    image(pantallas[i], x, y);
  }

  void botones() {
    //x1,x2,y1,y2,estado1, estado2
    //boton inicio
    botones.botones(319, 495, 473, 545, 0, 1);
    botones.botones(33, 191, 407, 459, 1, 2);

    botones.botones(57, 188, 504, 552, 2, 3);
    botones.botones(206, 337, 504, 552, 2, 7);
    botones.botones(549, 679, 482, 517, 3, 4);
    botones.botones(582, 739, 504, 550, 4, 11);//x
    botones.botones(550, 680, 536, 580, 3, 5);
    botones.botones(231, 387, 503, 552, 5, 6);
    botones.botones(413, 570, 505, 552, 6, 11);

    botones.botones(482, 613, 505, 552, 7, 8); 
    botones.botones(139, 249, 505, 551, 8, 11);
    botones.botones(630, 762, 504, 552, 7, 9);
    botones.botones(542, 660, 504, 552, 9, 10);    
    botones.botones(612, 776, 410, 467, 10, 12); 
 /*   botones.botones(319, 493, 477, 542, 12, 11);*///aca iria boton para pasar a credi
    botones.botones(319, 493, 477, 542, 11, 0);
  }
    
}

void cambiarEstado( int nuevoEstado ) {
    estado = nuevoEstado;
    println( estado );
  }
