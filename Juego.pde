class Juego {
//Variables
  String estado;
  Personaje personaje;
  int cant1  = 8;
  int cant2 = 8;
  Luciernagasoff[]luciernagasoff= new Luciernagasoff[cant1];
  Luciernaga[] luciernagas = new Luciernaga[cant2];

//Constructor
  Juego() {
    estado = "jugar";//estado inicial
    personaje = new Personaje( width/2, height/4*2, width/8 );//pj
//inicializo los dos tipos de luciernagas
    for ( int i = 0; i < cant2; i++ ) {
      luciernagas[i] = new Luciernaga( -100, i, true );
    }
    for ( int i = 0; i < cant1; i++ ) {
      luciernagasoff[i] = new Luciernagasoff( -100, i, true );
    }
  }
  
//Actualizo el juego
void actualizar() {
if ( estado.equals( "jugar" ) ) {
   for ( int i = 0; i < cant2; i++ ) {  
    luciernagas[i].actualizar();
     luciernagasoff[i].actualizar();  
 }
      
//Cito las colisiones del pj
 personaje.prendida( luciernagas );
 personaje.apagada(luciernagasoff);   
    }
  }

//Dibujo la pantalla de perder
void dibujar() {
 if ( estado.equals( "perder") ) {
  background (fondo);
  textSize(20);
  fill(#4AECE5);
  text("                  Perdiste! \n Recolectaste Luciérnagas apagadas \n              Pulsa ´Espacio´\n        para volver a comenzar",245,200);
  if ( key == ' ' )if ( estado == "perder" )
  estado = "jugar"; 
 }

 if ( estado.equals( "jugar" ) ) {
 personaje.dibujar();
 for ( int i = 0; i < cant2; i++ ) {  
 luciernagas[i].dibujar( true );
 luciernagasoff[i].dibujar( true );
 }
}
}

//Teclas del Pj
  void teclas() {
    personaje.moveLeft();
    personaje.moveRight();
  }
}
