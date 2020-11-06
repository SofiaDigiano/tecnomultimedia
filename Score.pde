/*Tuve que poner la variable de score fuera de la clase ya que incrementaba 
 el puntaje sin tener en cuenta las colisiones. Es decir en lugar de incrementar con cada colision de las luciernagas encendidas
 incrementaba solo.
 */
int score = 0;
class Score {
  Score() {
  }

  void dibujar() {
    textSize (20);
    fill(#4AECE5); 
    text("Score: "+score, 50, 30);

    println(score);
  }
}
