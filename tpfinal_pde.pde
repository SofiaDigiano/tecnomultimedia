/* Tp Final: "Forest´s Secrets"
 •Digiano Sofía, Perez De Berti Luna
 •Tecno M 1 FDA
 •Entrega 19/11:
 Logramos hacer que de la pantalla 10 pase a la 12 que sería el inicio del juego. Por otro lado añadimos el resize completo  para que
 se modifiquen las imagenes y el resto del contenido de cada pantalla al tamaño al que se ajuste la ventana. Y por otro lado añadimos un sonido más
 durante el juego que se produzca cuando el jugador atrapa una luciernaga encendida( va con un poco de delay pero funciona)
 */

//variable global
Aventura aventura;

//Variable sonido general aventura + juego
import ddf.minim.*;
Minim soundengine;
AudioSample sonido1;


void setup() {
  size(800, 600);
  aventura = new Aventura();
  //RESIZE
  surface.setTitle("Forest´s Secrets");
  surface.setResizable(true);


  //AUDIO de la aventura
  soundengine = new Minim(this);
  sonido1 = soundengine.loadSample("bosque.mp3", 1024);
  sonido1.trigger();
}

void draw() {
  aventura.draw();
}

void mouseClicked() {
  aventura.botones();
}
