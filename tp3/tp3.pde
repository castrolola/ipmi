//https://www.youtube.com/watch?v=tQNV-F9ldnA
PImage img;
int xImg = 0;
int yImg = 0;
int tam = 180;
float angulo = 0;
boolean cambiarColor = false; 

void setup() {
    size(800, 400);
    img = loadImage("13.jpg");
    noStroke();
}

void draw() {
    background(15, 28, 46);
    
    xImg = 0;
    yImg = 0;
    image(img, xImg, yImg, width/2, height);
    hacerCuadrantes();
}

void hacerCuadrantes() {
    for (int fila = 0; fila < 2; fila++) {
        for (int col = 0; col < 2; col++) {
            int cuadranteX = 400 + col * 200;
            int cuadranteY = fila * 200;
            
            push(); 
            //Muevo el punto a el centro del cuadrado para que gire en su propio eje
            translate(cuadranteX + 100, cuadranteY + 100); 

            rotarCuadrante(fila, col, angulo);
            
            rectMode(CENTER);
            
            fill(obtenerColor(fila, col, 0));
            square(0, 0, 200);
            rellenarCuadrados(fila, col, 0, 0);
            
            pop(); //Que vuelva a las coordenadas originales
        }
    }
}

void rellenarCuadrados(int fila, int col, int centerX, int centerY) {
    for (int j = 0; j < 8; j++) {
        int tamCuadrado = tam - j * 18;
        int cantidadDecolorada = j * 20; 
        
        fill(obtenerColor(fila, col, cantidadDecolorada));
        
        square(centerX, centerY, tamCuadrado);
    }
}

color obtenerColor(int fila, int col, int decolorado){
    if (!cambiarColor) {
        if (fila == 0 && col == 0){
            return color(0 + decolorado, 155 + decolorado, 76 + decolorado);
        }
        else if (fila == 0 && col == 1){
            return color(214 + decolorado, 46 + decolorado, 73 + decolorado);
        }
        else if (fila == 1 && col == 0){
            return color(173 + decolorado, 102 + decolorado, 10 + decolorado);    
        }
        else if (fila == 1 && col == 1){
            return color(111 + decolorado, 93 + decolorado, 168 + decolorado);  
        }
    } else {
        if (fila == 0 && col == 0){
            return color(255 + decolorado, 204 + decolorado, 0 + decolorado); 
        }
        else if (fila == 0 && col == 1){
            return color(0 + decolorado, 204 + decolorado, 255 + decolorado); 
        }
        else if (fila == 1 && col == 0){
            return color(240 + decolorado, 128 + decolorado, 128 + decolorado);
        }
        else if (fila == 1 && col == 1){
            return color(200 + decolorado, 0 + decolorado, 200 + decolorado);
        }
    }
    return color(0);
}
    
void mousePressed(){
    int centroX = 400 + 100; 
    int centroY = 100;

    float dst = dist(mouseX, mouseY, centroX, centroY);

    if( dst < 100){
        angulo = angulo + 15; 
    }

    int centroXrojo = 400 + 200 + 100; 
    int centroYrojo = 100;       
    float dstRojo = dist(mouseX, mouseY, centroXrojo, centroYrojo);

    if (dstRojo < 100) {
        cambiarColor = !cambiarColor;
    }

    //Para volverlo a la normalidad
    int centroXvioleta = 400 + 200 + 100; 
    int centroYvioleta = 200 + 100;       
    float dstVioleta = dist(mouseX, mouseY, centroXvioleta, centroYvioleta);

    if (dstVioleta < 100) {
        angulo = 180; 
        cambiarColor = false;
    }
}

void rotarCuadrante(int fila, int col, float angulo) {
    rotate(radians(angulo));
}
