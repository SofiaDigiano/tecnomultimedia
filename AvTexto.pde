class Textos {
  //Atributos
  PFont fuente;
  //ARRAY TEXTO
  int cantidad = 12;
  int numtext = 12;
  String [] mistextos = new String[cantidad];


  //Constructor 

  Textos() {
    //declaro los valores iniciales

    //CARGA TEXTOS
    for (int i = 0; i < numtext; i++) {
      mistextos[0] = "Nunca sabes con que seres te puedes \n   encontrar cuando te pierdes\n            en el bosque";
      mistextos[1] = "Llegaste hasta este bosque tu misión es descubrir \n sus secretos. Deberás tomar diferentes decisiones \n para lograrlo.";
      mistextos[2] ="El camino se divide al final del mismo. \n ¿Cuál tomas?.";
      mistextos[3] ="Ves un brillo a la derecha. \n ¿Te acercas a ver o sigues?.";
      mistextos[4] ="Descubriste una tribu..\n son Simbus, y protegen el bosque";
      mistextos[5] ="Sigues hacia el final y escuchas unos cantos. \n Pero el camino es largo, debes continuar";
      mistextos[6] ="No temas!.. es WENDIGO. \n El dios protector \n del bosque. ";
      mistextos[7] ="El camino vuelve a dividirse. \n ¿Cuál eliges?" ;
      mistextos[8] ="Ups camino cerrado, \n deberás comenzar de nuevo." ;
      mistextos[9] ="Ya falta poco. \n Sigue.." ;
      mistextos[10] ="Las ballenas nadan en el cielo. \n Las luciérnagas vuelan en el mar.." ;
      mistextos[11] ="Tecno. M. 1." ;
    }
  }
  //funciones*/
  void mistextos(int i, int x, int y) {
    text(mistextos[i], x, y);
    fuente = loadFont( "Gungsuh-48.vlw" );
    textFont(fuente);
    textSize(15);
  }
}
