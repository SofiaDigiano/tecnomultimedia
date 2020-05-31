//Variable velocidad y tamaño de texto
float velocidad = 0.2;
float tamTexto = 5;

//variables color de texto
color colortexto;
color colortexto2;
color colortexto3;

//Variables PANTALLA 1
PImage pantalla1;
PFont fuentetitulo;
float posx1=650, posy1=300;
float x1texto=300, y1texto=300;

//Fuente de la PANTALLA 2 a la 9
PFont fuentecreditos;

//Variable Pantalla 2
PImage pantalla2;
float posx2=-650, posy2=300;
float x2texto=-900, y2texto=300;

//Variable PANTALLA 3
PImage pantalla3;
float posx3=2050, posy3=300;
float x3texto=1900, y3texto=300;

//Variable PANTALLA 4
PImage pantalla4;
float posx4=-2050, posy4=300;
float x4texto=-2300, y4texto=150;

//Variable PANTALLA 5
PImage pantalla5;
float posx5=3550, posy5=300;
float x5texto=3700, y5texto=50;
float x6texto=3750, y6texto=120;
float x7texto=3800, y7texto=150;
float x8texto=3850, y8texto=180;
float x9texto=3900, y9texto=210;
float x10texto=3950, y10texto=240;

//Variable PANTALLA 6
PImage pantalla6;
float posx6=-3550, posy6=300;
float x11texto=-4100, y11texto=10;


//Variable PANTALLA falkor
PImage falkor;
float posx7=5100, posy7=300;

//Variable PANTALLA bestia
PImage bestia;
float posx8=-5100, posy8=300;
float x12texto=5350, y12texto=300;


void setup(){
size(600,600);

//fuentes
 fuentetitulo = loadFont( "theneverendingstory.vlw" );
 fuentecreditos = loadFont( "Gabriola.vlw");
  
//Imágenes 
  pantalla1 = loadImage("pantalla1.jpg");
  pantalla2 = loadImage("pantalla2.jpg");
  pantalla3 = loadImage("pantalla3.jpg");
  pantalla4 = loadImage("pantalla4.jpg");
  pantalla5 = loadImage("pantalla5.jpg");
  pantalla6 = loadImage("pantalla6.jpg");
  falkor = loadImage("falkor.jpg");
  bestia = loadImage("gmork.jpg");
  
//Caracteristicas del texto e imagen
  textFont( fuentetitulo);
  textFont( fuentecreditos);
  textAlign( CENTER, CENTER );
  imageMode( CENTER );
  
//Valor de variable de color
  colortexto = color( 255, 255, 21 );
  colortexto2 = color( 255, 106, 0 );
  colortexto3 = color( 255, 187, 0 );
}


void draw(){
background(0);

//PANTALLA 1:imagen 
image(pantalla1, posx1, posy1, 680, 600);  
//ACTUALIZA PATALLA 1
 posx1= posx1-1;

//PANTALLA2: imagen
image(pantalla2, posx2, posy2, 500, 650);
//ACTUALIZA PANTALLA2
  velocidad= 2;
  posx2= posx2-1;
  posx2= posx2 + velocidad;
  
//PANTALLA3: imagen
image(pantalla3, posx3, posy3, 550, 650);
//ACTUALIZA PANTALLA3
  posx3= posx3-1;
  
//PANTALLA4: imagen
image(pantalla4, posx4, posy4, 720, 545);
//ACTUALIZA P4
  velocidad= 2;
  posx4= posx4-1;
  posx4= posx4 + velocidad;
  
//PANTALLA5: imagen
image(pantalla5, posx5, posy5, 1200,898);  
//ACTUALIZA P5
 posx5= posx5-1;
   
//PANTALLA6: imagen
image(pantalla6, posx6, posy6, 720, 545);
//ACTUALIZA P6
 velocidad= 2;
 posx6= posx6-1;
 posx6= posx6 + velocidad;
  
//PANTALLA FALKOR imagen
image(falkor, posx7, posy7, 679, 543);
//ACTUALIZAPfalkor
 posx7= posx7-1;
    
  
//PANTALLA BESTIA: imagen
image(bestia, posx8, posy8, 800, 600);
//ACTUALIZA Pbestia
  velocidad= 2;
  posx8= posx8-1;
  posx8= posx8 + velocidad;
  
  
//TEXTOS
//Titulo
textFont(fuentetitulo);
fill(colortexto);
textSize(55);
text("La Historia sin Fin",x1texto, y1texto, width , height);
//ACTUALIZA título
   tamTexto = tamTexto -frameCount;
   x1texto= x1texto-1;
   y1texto= y1texto-1;

//Texto 2 direccion
textFont(fuentecreditos);
fill(colortexto2);
textSize(tamTexto);
text("Dirigida por: Wolfgang Petersen",x2texto, y2texto, width/2 , height/2);
//ACTUALIZA texto2
  velocidad= 2;
  x2texto= x2texto-1;
  x2texto= x2texto + velocidad;
 
//Texto 3 produccion
textFont(fuentecreditos);
fill(colortexto3);
textSize(tamTexto);
text("Producida por: Bernd Eichinger, Dieter Geissler, Bernd Schaefers",x3texto, y3texto, width , height/2);
//ACTUALIZA texto3
  tamTexto= tamTexto-1;
  x3texto= x3texto-1;

//Texto 4 musica
textFont(fuentecreditos);
fill(colortexto2);
textSize(tamTexto);
text("Música: Klaus Doldinger, Giorgio Moroder",x4texto, y4texto, width/2 , height/3);

//ACTUALIZA texto4
 velocidad= 2;
 x4texto= x4texto-1;
 x4texto= x4texto + velocidad;


//Texto 5 protagonistas
textFont(fuentecreditos);
fill(colortexto3);
textSize(45);
text("Protagonistas:",x5texto, y5texto, width , height);
textSize(35);
text("Noah Hathaway como Atreyu",x6texto, y6texto, width, height);
text("Barret Oliver como Bastian",x7texto, y7texto, width , height);
text("Alan Oppenheimer como Falkor, Gmork, El comerrocas",x8texto, y8texto, width , height);
text("Tami Stronach como la Emperatriz infantil",x9texto, y9texto, width , height);
text("Deep Roy como Teeny Weeny",x10texto, y10texto, width , height);

//ACTUALIZA texto5
tamTexto= tamTexto-1;
  x5texto= x5texto-1;
  x6texto= x6texto-1;
  x7texto= x7texto-1;
  x8texto= x8texto-1;
  x9texto= x9texto-1;
  x10texto= x10texto-1;


//Texto 6 año y país
textFont(fuentecreditos);
fill(colortexto2);
textSize(45);
text("1984, Alemania Occidental",x11texto, y11texto, width , height);
//ACTUALIZA texto6
  velocidad= 2;
  x11texto= x11texto-1;
  x11texto= x11texto + velocidad;

//Texto 7 empresas
textFont(fuentecreditos);
fill(colortexto);
textSize(35);
text("Warner Bros. Pictures, Neve Constantin Film, WDR.",x12texto, y12texto, width , height/2);
//ACTUALIZA texto 7
tamTexto= tamTexto-1;
x12texto= x12texto-1;

  }
