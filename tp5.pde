// Forest´s fireflies 

/* PROPUESTA 
  Decidí modificar la maqueta que hice de un juego de naves y cree un juego sobre una posible continuación de la escena
  de las luciernagas fusionando 2 personajes las luciérnagas y los hombrecitos y agregando luciernagas apagadas. 
  El juego consiste en que el usuario deberá atrapar las luciérnagas que vuelan hacia el que esten encendidas. 
  El jugador deberá volver a empezar si atrapa una apagada.
 */
 
 //Declaro la clase Juego y la imagen para el fondo
 PImage fondo;
 Juego juego;  

void setup() {
  size( 800, 600 );
  fondo = loadImage("fondo.png");
  juego = new Juego();
}

void draw() {
  background(fondo);
  juego.actualizar();
  juego.dibujar();
}

void keyPressed() {
  juego.teclas();
}
