
color negroAzulado = color(40, 55, 65);
color rojo = color(192, 48, 32);
color beigeClaro = color(205, 175, 130);
color beigeOscuro = color(170, 145, 105);
color negro = color(15, 15, 18);
color rojoOscuro = color(130, 35, 25);
color fondo = color(220, 210, 185);

PImage gato;

void setup(){
  size(800,400);
  gato = loadImage("gato.jpeg"); 
  background(205, 198, 171);
  
   
} 

void draw(){
  
  background(205, 198, 171); // para que no se superponga al redibujar
  image(gato,0,0,width/2,height);

  pushMatrix();//guardo coordenadas 
  //Esto porqu eme olvide de poner la imagen original asi lo muevo sin tener que cambiar las coordenadas de cada figura
  translate(200,0);//muevo la imagen 
    orejas(); 
    detrasCuerpo();
    cuerpo();
    cabeza();
    cara();
    
    partesCuerpo();
    cola();
    nariz();
  popMatrix();//vuelvo a las coordenadas anteriores

  println("X: " + mouseX + " Y: " + mouseY);
}

void cabeza(){
  fill(rojoOscuro);
  ellipse(400,100,130, 100);
}

void orejas(){
  noStroke();
  fill(rojoOscuro);
  triangle(460,10,400,50,460,80);
  fill(negro);
  triangle(340,10,340,80,400,50);
}

void cara(){
  
  fill(beigeClaro);
  arc(400,89,126,79,radians(180),radians(360),CHORD);
  
  fill(negroAzulado);
  arc(400,100,135,103,radians(90),radians(270),CHORD);
  
  pushMatrix();
  translate(400, 100);
    fill(negro);   
    arc(28, -11, 45, 30, radians(0),radians(180),CHORD);
    arc(-28, -11, 45, 30,radians(0),radians(180),CHORD);
  popMatrix();
}

void cuerpo(){
  fill(negro);
  
  beginShape();
  vertex(367,142);
  vertex(365,340);
  vertex(365,340);
  vertex(463,340);
  vertex(464,220);
  bezierVertex(464,220,455 ,190, 400,148);
  endShape(CLOSE);
  
}

void cola(){
  fill(negro);
  rect(290,340,175,20);
}

void nariz(){
  fill(rojo);
  triangle(400,120,390,110,410,110);
}

void partesCuerpo(){
  fill(205, 175, 130);
  rect(390,230, 75,120);
  
  fill(negro);
  arc(465,310,120,100,radians(90),radians(270),PIE);
  
  fill(negroAzulado);
  arc(450,313,50,50,radians(90),radians(270),CHORD);
  
  fill(rojo);
  arc(366,190,50,50,radians(270),radians(450),CHORD);
  
  fill(negro);
  arc(366,190,30,30,radians(90),radians(270),CHORD);
  
  fill(rojo);
  arc(366,290,80,80,radians(90),radians(270),CHORD);
  
  
}
void detrasCuerpo(){
    fill(beigeOscuro);
    arc(460,53,80,80,radians(270),radians(450),CHORD);
}

  
