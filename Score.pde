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
