class Luciernagasoff {
//Variables
  float x, y;
  float tam;
  float vel;
  PImage fireflieoff;

//Constructor  
  Luciernagasoff( float y_, int d, boolean invertir ) {  //agrego parametro para decidir si quiero invertir o no
    x = random( -20, width );
    y = y_;
    tam = random( 40, 80 );
    vel = random( 1, 3 );
    fireflieoff = loadImage( "fireflieoff.png" );  
    fireflieoff.resize( int(tam), int(tam) );
  }

void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
void dibujar( boolean image ) {
    image( fireflieoff, x, y );
  }
  
void reciclar() {
    x = random( width );
    y = -150;
    tam = random( 20, 40 );
    vel = random( 1, 3 );
  }
}
