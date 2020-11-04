class Pantallas{
 //Atributos
   //ARRAY IMAGENES
   
  int cantidad = 12;
  PImage [] pantallas = new PImage [cantidad];
  String [] filenames = {"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg", "11.jpg", "12.jpg"};
    
 //Constructor 
 
 Pantallas(){
   //declaro los valores iniciales
   //CARGA DE IMAGENES
 for(int i = 0; i < filenames.length; i++){
  pantallas[i]= loadImage(filenames[i]);
 }
 
 }
  //funciones*/
  void imagenes(int i){
  image(pantallas[i],0,0);
}
}
