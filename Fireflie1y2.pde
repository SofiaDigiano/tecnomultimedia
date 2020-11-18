class Fireflie1 {
  //VARIABLES
  float x, y;
  float tam;
  float vel;
  PImage fireflie1;

  //CONSTRUCTOR 
  Fireflie1( float y_, int id, boolean inv ) {  
    //inicializar las variables
    x = random( -40, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
    //carga de las imagenes
    fireflie1 = loadImage( "fireflie1.png" ); 
    //modificar el tamaño de las imágenes
    fireflie1.resize( int(tam), int(tam) );
  }

  //FUNCIONES
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {
    image( fireflie1, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
}


class Fireflie2 {
  //VARIABLES
  float x, y;
  float tam;
  float vel;
  PImage fireflie2;

  //CONSTRUCTOR 

  Fireflie2( float y_, int id, boolean inv ) { 
    x = random( -20, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 3, 8 );

    //carga de las imagenes
    fireflie2 = loadImage( "fireflie2.png" );  
    //modificar el tamaño de las imágenes
    fireflie2.resize( int(tam), int(tam) );
  }
  //FUNCIONES
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar( boolean conImagen ) {

    image( fireflie2, x, y );
  }
  void reciclar() {
    x = random( width );
    y = -100;
    tam = random( 50, 100 );
    vel = random( 4, 6 );
  }
}
