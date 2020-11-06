class Juego {

  //VARIABLES
  String estado;
  Personaje personaje;
  Score score;
  int c = 8; 
  Fireflie2[] fireflie2= new Fireflie2[c];
  Fireflie1[] fireflie1 = new Fireflie1[c];

  //CONSTRUCTOR
  Juego() {
    estado = "inicio";
    score= new Score();
    personaje = new Personaje( width/2, height/4*3, width/8 );
    for ( int i = 0; i < fireflie1.length; i++ ) {
      fireflie1[i] = new Fireflie1( -100, i, true );
    }
    for ( int i = 0; i < fireflie2.length; i++ ) {
      fireflie2[i] = new Fireflie2( -100, i, true );
    }
  }

  //FUNCIONES

  void dibujar() {
    //Estado inicio
    if ( estado.equals("inicio")) {
      background (fondo);
      textSize(30);
      fill(#4AECE5);
      textAlign(CENTER);
      text("      Atrapa las luciernagas encendidas \n   Presiona´SPACE´ \n para empezar", 400, 200);
    }


    //Estado perder
    if ( estado.equals( "perder") ) {
      background (fondo);
      textSize(30);
      fill(#4AECE5);
      textAlign(CENTER);
      text("      Perdiste! :(\n   Presiona´SPACE´ \n para volver a empezar", 400, 200);
    }
    //Estado jugar
    if ( estado.equals( "jugar" ) ) {
      personaje.dibujar();     
      for ( int i = 0; i < c; i++ ) {  
        fireflie1[i].dibujar( true );
        fireflie2[i].dibujar( true );
      }
      score.dibujar();
    }
  }

  void actualizar() {

    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < fireflie2.length; i++ ) {  
        fireflie2[i].actualizar();
      }
      for ( int i = 0; i < fireflie1.length; i++ ) {  
        fireflie1[i].actualizar();
      }
      //Colisiones
      personaje.prendida( fireflie1 );
      personaje.apagada(fireflie2);
    }
  }

  //Función teclas
  void teclas() {
    personaje.moverDer();
    personaje.moverIzq();
    personaje.teclaEspacio(width/2, width/4);

    //Función de espacio para pasar de estados
    if ( key == ' ' ) {  
      if ( estado == "inicio" ) {
        estado = "jugar";
      }
    }
    if ( key == ' ' ) {  
      if ( estado == "perder" ) {
        estado = "jugar";
      }
    }
  }
}
