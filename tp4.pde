//Primeramente lo que pude modificar( no sé si logré simplificar), fue reemplazar el String por Int de estado y asignarle un valor numerico
/// Debido a que intenté realizar un ciclo for pero tuve un problema y me trabé, con la variable String ya que me indicaba un numero entero (Int)
//y al intentar convertir esa función no me cargaba la imagen. Otro problema que tuve es que al referenciar los estados en la función de los botones no me detectaba el evento y
//por ende no se cargaba la siguiente pantalla. Me pareció, ante el problema, una solución más ordenada para no utilizar tantos if.
 
//Estado
int estado =0;

PFont fuente;

//ARRAY IMAGENES
int cantidad = 12;
PImage [] pantallas = new PImage [cantidad];
String [] filenames = {"1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg","12.jpg"};

//ARRAY TEXTOS
int numtext = 12;
String [] mistextos = new String[cantidad];

//ARRAY Botones
int [][][] botones = new int [cantidad][3][4];



//ARRAY LUCIERNAGAS
int counter;
float[][] luces;
int numluces = 50;
String [] luciernagas = new String[cantidad];

//AUDIO
import ddf.minim.*;
Minim soundengine;
AudioSample sonido1;


void setup() {
  
  size(800, 600);
   
//CARGA DE IMAGENES
 for(int i = 0; i < filenames.length; i++){
  pantallas[i]= loadImage(filenames[i]);
 }
 
 //CARGA TEXTOS
 for(int i = 0; i < numtext; i++){
mistextos[0] = "Nunca sabes con que seres te puedes \n   encontrar cuando te pierdes\n            en el bosque";
mistextos[1] = "Llegaste hasta este bosque tu misión es descubrir \n sus secretos. Deberás tomar diferentes decisiones \n para lograrlo.";
mistextos[2] ="El camino se divide al final del mismo. \n ¿Cuál tomas?.";
mistextos[3] ="Ves un brillo a la derecha. \n ¿Te acercas a ver o sigues?.";
mistextos[4] ="Descubriste una tribu..\n son Simbus, y protegen el bosque";
mistextos[5] ="Sigues hacia el final y escuchas unos cantos. \n Pero el camino es largo, debes continuar";
mistextos[6] ="No temas!.. es WENDIGO. \n El dios protector del bosque. ";
mistextos[7] ="El camino vuelve a dividirse. \n ¿Cuál eliges?" ;
mistextos[8] ="Ups camino cerrado, \n deberás comenzar de nuevo." ;
mistextos[9] ="Ya falta poco. \n Sigue.." ;
mistextos[10] ="Las ballenas nadan en el cielo. \n Las luciérnagas vuelan en el mar.." ;
mistextos[11] ="Tecno. M. 1." ;
 }

//AUDIO
 soundengine = new Minim(this);
 sonido1 = soundengine.loadSample("bosque.mp3", 1024);
  sonido1.trigger();
  
//CARGA LUCIERNAGAS
 counter = 0; 
  luces = new float[numluces][7]; 
  float sp = 0.25; 
  for(int i = 0; i < numluces; i++){
      luces[i][0] = random(3) + 3; //tamaño de las luciernagas
      luces[i][1] = random(width); //x pos
      luces[i][2] = random(height);  //y pos
      luces[i][3] = random(sp)-(sp/2);  // x velocidad
      luces[i][4] = random(sp)-(sp/2);  // y velocidad
      luces[i][5] = random(1);  //rate
      luces[i][6] = 0;  //alpha
      
  }

  //carga botones
  cargaboton();
  
}


void draw() {
 
//Llamo a la Función de Estados (NUEVO)
switch(estado){
  case 0:
  imagenes(0);
  textSize(15);
  mistextos(0,250, 350); 
    
  break;
    
  case 1:
  imagenes(1);
   textSize(15);
   mistextos(0,250, 350); 

    break;
  
  case 2:
  imagenes(2);
  mistextos(2, 50, 525);
  break;
  
   case 3:
  imagenes(3);
  mistextos(3, 50, 525);
  break;
  
   case 4:
   imagenes(4);
   mistextos(4, 50, 525);
   break;
   
   case 5:
  imagenes(5);
  mistextos(5, 50, 525);  
  break;
  
   case 6:
  imagenes(6);
  mistextos(6, 50, 525);
  luciernagas(1);//agregar evento de luciernagas
  break;
  
  case 7:
  imagenes(7);
  mistextos(7, 50, 525);
  break;
  
   case 8:
  imagenes(8);
    mistextos(8, 50, 525);
  break;
  
   case 9:
  imagenes(9);
    mistextos(9, 50, 525);
  break;
  
   case 10:
  imagenes(10);
    mistextos(10, 50, 525);
    luciernagas(1);//agregar evento luciernagas
  break;
  
   case 11:
  imagenes(11);
    textSize(25);
    mistextos(11, 330, 405);
  break;
  
}



  
  
  println(estado);
}

void mousePressed() {
  botones();
 
}
