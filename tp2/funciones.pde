void pantallaInicio(){
  fill(255);
  ellipse(width/2, 380, 160, 80);
  fill(195, 134, 127);
  textSize(20);
  textAlign(CENTER,CENTER);//para centrar el texto
  text("EMPEZAR", width/2, 380);
  
  
  image(titulo, width/2-110, 30,220, 250);//le reste la mitad del ancho de la imagen para que quede en el medio
}
void primerPantalla(){
  image(robot,350-movimiento ,-80+movimiento, 500,400 );
    
    if(posYTxt<=80){
      posYTxt+=0.5;
      posXTxt=250;
    }
      else{
        posYTxt = 80;
      }
      
      if (contador >= 470) {
        posYTxt -= 1;    
      } 
      else if (posYTxt < 80) {
        posYTxt += 0.5;  // Si todavía no llegó a 80 que baje 
        
      } 
      else {
        posYTxt = 80;    // Si ya llegó a 80 y no es hora de irse, se queda quieto.
      }

    fill(255);
    text("En 1957, en plena Guerra Fría,\n en el pequeño pueblo de Rockwell, Maine. \n Un gigante de hierro se estrella contra la Tierra", posXTxt, posYTxt);

}

void segundaPantalla(){
  if (contador >= 700 && contador < 1100) {
        
        posYTxt2+=1;
        
        posYImg-=1; 
        if (posYImg <= 280){
          posYImg = 280;
        }
        if (posYTxt2 >= 80){
          posYTxt2 = 80;
        }
        
      } 
      else if (contador >= 1100) {
        posYImg+=1;    
        posYTxt2-=1;
        
      }
      
  image(juntos, width/2, posYImg,width/2,200);
  image(robotynene, 0, posYImg,width/2,200);
  
  fill(255);
  text("El gigante se hace amigo de un niño llamado Hogarth,\n el le enseña a esconderse de los humanos,\n a alimentarse y le da un refugio.", posXTxt, posYTxt2);
}
void tercerPantalla(){

  if (contador >= 1300 && contador < 1700 ) {
        
        if (tamDean < 200 && posXDean > 380) {
          tamDean += 1;
          posXDean -= 2;
        }
              

        if (posYComer > 250) {
          posYComer -= 2;    
        }
        if (posXTxt3 < 200) {
          posXTxt3 += 4;    
        }
        
      }
      else if (contador > 1700) {
          posYComer += 2;    
          posXTxt3 -= 4;
          posXDean += 2;
        
      }
      
  image(dean, posXDean, posYDean, tamDean,tamDean);
  image(comer, posXComer, posYComer,300,200);
  text("Hogarth junto con el chatarrero Dean,\n esconden al gigante en un desarmadero\n donde puede comer chatarra\n y le enseñan a comportarse\n para que no lo descubran.", posXTxt3, posYTxt3);
}
void cuartaPantalla(){

  if (contador > 1900 && contador < 2400) {
    posXNave += 2;
    
    opacidadImg += 10;
    if (opacidadImg >= 255) {
      opacidadImg = 255; 
    }
    
    opacidad4 += 2;
    if (opacidad4 >= 255) {
      opacidad4 = 255;
    }

    if (anchoRect < 400) {
      anchoRect += 6; 
      posXRect -= 6;  
    }
    else {
      anchoRect = 400; 
    }
    
    if (altoRect < 100) {
      altoRect += 2;  
      posYRect -= 2;  
    }
    else {
      altoRect = 100; 
    }
  }
  else if(contador > 2400){
    anchoRect -= 6; 
    posXRect += 6;
    altoRect -= 2;  
    posYRect += 2;
    
    opacidadImg -= 2;
    if (opacidadImg <= 0) {
      opacidadImg = 0;
    }

    opacidad4 -= 8;
    if (opacidad4 <= 0){
      opacidad4 = 0;
    }
  }

  if (contador <= 1900) {
    opacidad4 = 0;
    opacidadImg = 0;
  }

  
  fill(70, 130, 180, opacidad4);
  rect(posXRect, posYRect, anchoRect, altoRect);
  
  
  fill(255, opacidad4);
  textSize(16);
  textAlign(LEFT, CENTER);
  text("Pero el gobierno se entera de la existencia\n del gigante y envía a un agente llamado\n Kent Mansley para capturarlo\n y llevarlo a una base militar.", posXRect + 15, posYRect + 15, anchoRect - 30, altoRect - 30);


  tint(255, opacidadImg);
  image(nave, posXNave, posYNave, anchoNave, altoNave);
  image(general, posXImage4, posYImage4, anchoImage4, altoImage4); // <--- El milico ahora queda arriba de todo
  noTint(); 
}
void quintaPantalla(){
  if (contador > 2500 && contador < 3000) {
    posYGigante -= 2;
    
    if (posYGigante <= 180) {
      posYGigante = 180;
    } 
    opacidad5 += 5; 
    if (opacidad5 >= 255) {
      opacidad5 = 255; 
    }
  }
  else if (contador > 3000){
    
    posXGigante -= 2;
    posXImage4 += 2;
    
    opacidad5 -= 5;
    if (opacidad5 <= 0) {
      opacidad5 = 0; 
    }

  }
  textSize(18);
  textAlign(CENTER, CENTER);
  image(gigante, posXGigante, posYGigante, anchoGigante, altoGigante);
  fill(70, 130, 180); 
  
  rect(posXRect2, posYRect2, anchoRect2, altoRect2);
  fill(255, opacidad5);
  text("El gigante se sacrifica para salvar a Hogarth y a Dean,\n destruyendo la base militar y derrotando al agente Mansley.\n Aunque el gigante muere, su legado\n de amistad y sacrificio perdura.", posXTxt5, posYTxt5);
}
void pantallaReset(){
  fill(255);
  ellipse(width/2, 380, 160, 80);
  fill(195, 134, 127);
  textSize(20);
  textAlign(CENTER,CENTER);//para centrar el texto
  text("RESET", width/2, 380);
}

void resetPrograma(){
  posXRect = 480;
  posYRect = 460;
  posXTxt = 0;
  posYTxt = 0;
  posYImg = 480;
  posYTxt2 = -40;
  tamDean = 0;
  posXDean = width;
  posYDean = 100;
  posYComer = height;
  posXComer = 120;
  posXTxt3 = -200;
  posYTxt3 = 120;
  anchoRect = 0;
  altoRect = 0;
  posXImage4 = 280;
  posYImage4 = 230;
  posXNave = -250;
  opacidad4 = 255;
  posXGigante = 100;
  posYGigante = 480;
  opacidad5 = 0;
  anchoRect2 = 350;
  altoRect2 = 150;
  posXRect2 = width/2;
  posYRect2 = -altoRect2;
  anchoRect = 0;
  altoRect = 0;
  posXRect = 480;
  posYRect = 460;
}
