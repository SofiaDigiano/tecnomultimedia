class Luces {
  //atributos
  //ARRAY LUCIERNAGAS
  int counter;
  float[][] luces;
  int numluces = 50;

  //constructor
  Luces() {

    //CARGA LUCIERNAGAS
    counter = 0; 
    luces = new float[numluces][7]; 
    float sp = 0.25; 
    for (int i = 0; i < numluces; i++) {
      luces[i][0] = random(3) + 3; //tamaño de las luciernagas
      luces[i][1] = random(width); //x pos
      luces[i][2] = random(height);  //y pos
      luces[i][3] = random(sp)-(sp/2);  // x velocidad
      luces[i][4] = random(sp)-(sp/2);  // y velocidad
      luces[i][5] = random(1);  //rate
      luces[i][6] = 0;  //alpha
    }
  }
  //funciones

  void dibujarluces() {
    //LUCIERNAGAS EVENTO
    counter++;
    for (int i = 0; i < numluces; i++) {
      if (counter % 5 == 0) {
        luces[i][3] += (random(0.1) - 0.05);
        luces[i][4] += (random(0.1) - 0.05);
      }

      luces[i][1] += luces[i][3];
      luces[i][2] += luces[i][4];

      if (luces[i][1] > width+20) {
        luces[i][1] -= (width+40);
      } else if (luces[i][1] < -20) {
        luces[i][1] += (width+40);
      }

      if (luces[i][2] > height+20) {
        luces[i][2] -= (height+40);
      } else if (luces[i][2] < -20) {
        luces[i][2] += (height+40);
      }    
      noStroke();
      int a = int(sin(luces[i][5]*0.05*counter)*255);
      if (a < 0) {
        a = 0;
      }
      fill(42, 255, 255, a);
      ellipse(luces[i][1], luces[i][2], luces[i][0], luces[i][0]);
    }
  }
}
