class Personaje {
  //Variables
    PImage pj;
  float x, y;
  float tam;
 
// Constructor
  Personaje( float x_, float y_, float tam_ ) {
    x = x_;
    y = y_ ;
    tam = tam_;
  }
  void dibujar() {
    pj = loadImage( "pj.png" );
    image(pj, x, 420);
  }

//Teclas coordenadas 
 void moveLeft(){
  if((keyCode == LEFT)){
  if (x >= -10) { //limita el margen de la pantalla para q el pj no se salga
  x= x-8;
  }
}
}
void moveRight(){
if((keyCode == RIGHT)){
  if (x <= 680){//limita el margen de la pantalla para q el pj no se salga
  x=x+8;
}
}
}

//COLISIONES de las apagadas y las encendidas

void prendida( Luciernaga[] on ) {
for ( int i = 0; i < on.length; i++ ) {
float distancia = dist( x, y, on[i].x, on[i].y );
if ( distancia < tam) {  
        tam += on[i].tam;  
        on[i].reciclar();
       
      }
    }
  }

void apagada( Luciernagasoff[] off) {
for ( int i = 0; i < off.length; i++ ) {
float distancia = dist( x, y, off[i].x, off[i].y );
if ( distancia < tam ) {  
tam += off[i].tam;  
off[i].reciclar();
 juego.estado = "perder";
  }
    }
  }
}
