int estado=0;

class Aventura {
//ARRAY IMAGENES 
  int cantidad = 12;
  PImage [] pantallas = new PImage [cantidad];
  String [] filenames = {"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg"};
  
  //variables 
  
  Botones botones;
  Textos textos;
/*Falta anexar el juego */

  //Constructor 
  Aventura() {
    //declaro los valores iniciales
    textos = new Textos();
    botones = new Botones();
  //CARGA DE IMAGENES
 for(int i = 0; i < filenames.length; i++){
  pantallas[i]= loadImage(filenames[i]);
 }
  }


//FUNCIONES
  void draw() {
    /*Estados*/
    if (estado==0) { 
      pantallas(0,0,0);
      textos.mistextos(0, 250, 350);
  }
  if (estado==1) { 
      pantallas(0,0,0);
      textos.mistextos(1, 50, 525);
  }
  if (estado==2) { 
      pantallas(0,0,0);
      textos.mistextos(2, 50, 525);
  }
  if (estado==3) { 
      pantallas(0,0,0);
      textos.mistextos(3, 50, 525);
  }
  if (estado==4) { 
      pantallas(0,0,0);
      textos.mistextos(4, 50, 525);
  }
  if (estado==5) { 
      pantallas(0,0,0);
      textos.mistextos(5, 50, 525);
  }
  if (estado==6) { 
      pantallas(0,0,0);
      textos.mistextos(6, 50, 525);
  }
if (estado==7) { 
      pantallas(0,0,0);
      textos.mistextos(7, 50, 525);
  }
  if (estado==8) { 
      pantallas(0,0,0);
      textos.mistextos(8, 50, 525);
  }
  if (estado==9) { 
      pantallas(0,0,0);
      textos.mistextos(9, 50, 525);
  }
  if (estado==10) { 
      pantallas(0,0,0);
      textos.mistextos(10, 50, 525);
  }
  if (estado==11) { 
      pantallas(0,0,0);
      textos.mistextos(11, 330, 405);
  }
  }









  void botones() {
    botones();
  }
  
  void pantallas(int i, int x, int y){
     image(pantallas[i], x, y);    
  }
}
