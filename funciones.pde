// En esta pestaña añadí simplificando el evento de las luciernagas en una función a pesar de que solo se utilice 2 veces en toda la aventura grafica
//y las referencie en los case segun en que pantalla debian aparecer.

//FUNCIÓN IMÁGENES
void imagenes(int i){
  image(pantallas[i],0,0);
}

//FUNCIÓN TEXTOS
void mistextos(int i, int x, int y){
 text(mistextos[i],x,y);
 fuente = loadFont( "Gungsuh-48.vlw" );
 textFont(fuente);
 textSize(15);
}

//Función Luciernagas

void luciernagas(int i){
  counter++;
    if(counter % 5 == 0){
      luces[i][3] += (random(0.1) - 0.05);
      luces[i][4] += (random(0.1) - 0.05);
    }
    
    luces[i][1] += luces[i][3];
    luces[i][2] += luces[i][4];
    
    if(luces[i][1] > width+20){
      luces[i][1] -= (width+40);
    }
    else if(luces[i][1] < -20){
      luces[i][1] += (width+40);
    }
    
    if(luces[i][2] > height+20){
      luces[i][2] -= (height+40);
    }
    else if(luces[i][2] < -20){
      luces[i][2] += (height+40);
    }    
    noStroke();
    int a = int(sin(luces[i][5]*0.05*counter)*255);
    if(a < 0){a = 0;}
    fill(42,255,255,a);
    ellipse(luces[i][1], luces[i][2], luces[i][0], luces[i][0]);
}
