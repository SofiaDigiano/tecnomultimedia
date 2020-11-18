/* Tp Final: "Forest´s Secrets"
 Digiano Sofía, Perez De Berti Luna
 Tecno M 1 FDA
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
  surface.setResizable(true);

  //AUDIO
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
