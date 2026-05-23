
void setup(){
    fuente = loadFont("FranklinGothic-Heavy-48.vlw");
    textFont(fuente);
    size(640, 480);
    
    img = loadImage("espacio.png");
    robot = loadImage("robotCayendo.png");
    robotynene = loadImage("gigante-nene.jpeg");
    titulo = loadImage("titulo.png");
    juntos = loadImage("juntos.jpg");
    posYTxt2 = -40;
    dean = loadImage("dean.png");
    comer = loadImage("comer.png");
    general = loadImage("General_Rogard.png");
    nave = loadImage("nave.png");
    gigante = loadImage("gigante5.png");
    posXDean= width;
    posYComer = height;
    contador = 0;
    resetPrograma();
}



void draw(){
  image(img, 0, 0, width, height);
  if (estado == 1) {
    pantallaInicio();
  }
  else if (estado == 2) {
    if (contador <= 3200) {
      contador++;
      movimiento = contador;
    }

    if (contador <= 700) {
      primerPantalla();
    }
    else if (contador <= 1300) {
      segundaPantalla();
    }
    else if (contador <= 1900) {
      tercerPantalla();
    }
    else if (contador <= 2500) {
      cuartaPantalla();
    }
    else if (contador <= 3200) {
      quintaPantalla();
    }
    else {
      pantallaReset();
    }
  }
}



void mouseClicked(){
  float d = dist(mouseX, mouseY, width/2, 380);
  int radio = 80;

  if (estado == 1 && d < radio) {
      estado = 2;
      contador = 0;
      resetPrograma();
  }
  else if (estado == 2 && d < radio && contador > 3200) {
      estado = 1;
      contador = 0;
      resetPrograma();
  }
}

