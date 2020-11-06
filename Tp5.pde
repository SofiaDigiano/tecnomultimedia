// Forest´s fireflies  version 5/11

/* PROPUESTA: un juego sobre una posible continuación de la escena de las luciernagas, agregando luciernagas apagadas. 
 El juego consiste en que el usuario deberá atrapar las luciérnagas que vuelan hacia el que esten encendidas. El jugador deberá volver a empezar si atrapa una apagada.
 */

/* CORRECCIONES: 5/11
 -Arreglé el problema que había con la imagen y el bug con el espacio al reiniciar, pero a veces se sigue trabando un poco
 -Intenté fusionar las dos clases de luciernagas pero no pude ya que me terminaba ejecutando una sola imagen. Asi que solo adjunte ambas clases en una misma pestaña 
 -Agregué un contador de score que sume puntaje en base a cada luciernaga encendida que atrape
 -Y agregué tambien una logica de estados que cumpla con inicio, jugar, y perder.
 */

PImage fondo;
Juego juego;  

void setup() {
  size( 800, 600 );
  fondo = loadImage( "fondo.png" );
  juego = new Juego();
}
void draw() {
  background(fondo);
  image(fondo, 0, 0);

  juego.actualizar();
  juego.dibujar();
}
void keyPressed() {
  juego.teclas();
}
