//Esborrat Maria Emilia   91009/0
//TP2 


PImage img1, img2, img3;
float posX, posY;
int estado;
float opacidadTexto = 255;
PFont miFuente;
int contador;
String texto1, texto2, texto3;

void setup() {
  size(640, 480);
  img1 = loadImage("image1.jpg");
  img2 = loadImage("image2.jpg");
  img3 = loadImage("image3.jpg");
  
  texto1 = "Loops (2001) es una obra virtual actualmente exhibida \nen el MoMa. Es un retrato de un bailarin, en donde \nlo principal es captar el movimiento y no la forma";
  texto2 = "Se contó con un equipo de programadores para realizar\n este proyecto,el cual cuenta con un código abierto \nque permite a otros adaptarlo y modificarlo";
  texto3 = "Es una producción colectiva del grupo OpenEndedGroup, \ny pueden encontrar mas de sus creaciones en su pagina web";

  miFuente = loadFont("MicrosoftYaHeiUI-Bold-48.vlw");
  textFont(miFuente);
  textAlign(CENTER, CENTER); // Texto alineado al centro

  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}

void draw() {
  background(0);
  fill(255);

  if (estado == 1) {
    // Pantalla 1
    image(img1, 0, 0, width, height);
    textSize(20);
    text(texto1, width/2, height/2);

    contador++;
    if (contador >= 300) { // 300 = 5 segundos 
      estado = 2;
      contador = 0;
    }
  } else if (estado == 2) {
    // Transición 1-2
    image(img1, 0, 0, width, height);
    fill(255, opacidadTexto);
    textSize(map(opacidadTexto, 255, 0, 48, 0));
    text(texto1, width/2, height/2);

    opacidadTexto -= 5;
    if (opacidadTexto <= 0) {
      estado = 3;
      contador = 0;
      opacidadTexto = 255;
    }
  } else if (estado == 3) {
    // Pantalla 2
    image(img2, 0, 0, width, height);
    textSize(20);
    text(texto2, width/2, height/2);

    contador++;
    if (contador >= 300) {
      estado = 4;
      contador = 0;
    }
  } else if (estado == 4) {
    // Transición 2-3
    image(img2, 0, 0, width, height);
    textSize(20);
    text(texto2, width/2, height/2);

    posX += 5;
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 5) {
    // Pantalla 3
    image(img3, 0, 0, width, height);
    textSize(20);
    text(texto3, width/2, height/2);

    // Botón de reinicio en la esquina inferior derecha
    if (mouseX > width - 150 && mouseY > height - 100) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    rect(width - 150, height - 100, 150, 80);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Reiniciar", width - 75, height - 60);
  }
}

void mousePressed() {
  if (estado == 5 && mouseX > width - 150 && mouseY > height - 100) {
    estado = 1;
    contador = 0;
    posX = 10;
    posY = 320;
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
