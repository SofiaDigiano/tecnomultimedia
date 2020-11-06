class Personaje {
  //VARIABLES
  float x, y, t;
  int tam;
  PImage jugador;
  //CONSTRUCTOR
  Personaje( float x_, float y_, float t_ ) {
    // inicializo las propiedades
    x = x_;
    y = y_ ;
    t = t_;
    tam = 100;
  }

  //FUNCIONES
  void dibujar() {
    jugador = loadImage( "pj.png" );
    jugador.resize(tam, tam);
    image(jugador, x, y);
  }
  //COLISION1
  void prendida( Fireflie1[] p ) {
    for ( int i = 0; i < p.length; i++ ) {
      float d = dist( x, y-t/10, p[i].x, p[i].y );
      if ( d < t/5 ) {
        t += p[i].tam;        
        score ++;
        p[i].reciclar();
      }
    }
  }

  //COLISION2
  void apagada( Fireflie2[] a) {
    for ( int i = 0; i < a.length; i++ ) {
      float d = dist( x, y-t/10, a[i].x, a[i].y );
      if ( d < t/5 ) {  
        t += a[i].tam;  
        a[i].reciclar();
        juego.estado = "perder";
      }
    }
  }

  //FUNCIONES DE LAS TECLAS
  void moverIzq() {
    if ((keyCode == LEFT)) {
      if (x >= -10) { //limita el margen de la pantalla para q el pj no se salga
        x= x-8;
      }
    }
  }
  void moverDer() {
    if ((keyCode == RIGHT)) {
      if (x <= 680) {//limita el margen de la pantalla para q el pj no se salga
        x=x+8;
      }
    }
  }
  void teclaEspacio(float x_, float t_) {
    if ( key == ' ' ) {
      x = x_;
      t = t_;
      juego.estado = "jugar";
    }
    if ( key == ' ' ) {
      x = x_;
      t = t_;
      juego.estado = "inicio";
    }
  }
}
