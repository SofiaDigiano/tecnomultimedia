class Luciernaga {
//Variables
  float x, y;
  float tam;
  float vel;
  PImage fireflie;
  
//Constructor
  Luciernaga( float y_, int d, boolean invertir ) {  //agrego parametro para decidir si quiero invertir o no
    x = random( -45, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 0, 2 );
    fireflie = loadImage( "fireflie.png" ); 
    fireflie.resize( int(tam), int(tam) );
  }
  
void actualizar() {
  y = y + vel;
  if ( y > height + tam/2 ) {
   reciclar();
    }
  }
  
void dibujar( boolean image ) {
 image( fireflie, x, y );
  }
  
void reciclar() { //funcion para desaparecer 
    x = random( width );
    y = -100;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
  }
}
