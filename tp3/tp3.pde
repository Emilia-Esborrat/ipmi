//Esborrat Maria Emilia   91009/0
//TP3
//https://youtu.be/uliEtm-9yAA


int cant = 3;
int tam;
int cantInicial;
int tamInicial;
PImage img;
boolean valorAleatorio = false;
int calcularCantidadTotal() {
  return cant * cant;  
}

void setup() {
  size(800, 400);
  tam = width/cant/2; 
  cantInicial = cant;
  tamInicial = tam;
  img = loadImage("OpArt.jpeg");
}

void draw() {
  background(0);
  println("Cantidad total de elementos en la grilla: " + calcularCantidadTotal());
  image(img, 0, 0, width/2, height);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if ((x+y)%2==0) {
        fill(52, 28, 214);
        rect(width - tam*(x+1), y*tam, tam, tam); 
        fill(12, 8, 36);
        
        if (valorAleatorio) {
          float ellipseSize = random(tam/2, tam);
          ellipse(width - tam*(x+1) + tam/2, y*tam + tam/2, ellipseSize, ellipseSize);  
        } else {
          ellipse(width - tam*(x+1) + tam/2, y*tam + tam/2, tam, tam);  
        }
        
      } else {
        fill(12, 8, 36);
        rect(width - tam*(x+1), y*tam, tam, tam);  
        fill(52, 28, 214);
        
        if (valorAleatorio) {
          float ellipseSize = random(tam/2, tam);
          ellipse(width - tam*(x+1) + tam/2, y*tam + tam/2, ellipseSize, ellipseSize);  
        } else {
          ellipse(width - tam*(x+1) + tam/2, y*tam + tam/2, tam, tam);  
        }
        
      }
    }
  }
}

void mousePressed() {
  cant++;
  tam = width/cant/2; 
}

void keyPressed() {
  if (key == 'r') { // reiniciar con tecla r
    cant = cantInicial;
    tam = tamInicial;
  } else if (key == 'm') {
    valorAleatorio = true; // activar con tecla m
  } else if (key == 'n') {
    valorAleatorio = false; // Desactivar con tecla n
  }
}
