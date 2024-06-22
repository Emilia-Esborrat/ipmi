//Esborrat Maria Emilia   91009/0
//TP3
// https://youtu.be/zRHuTFpehOc?si=M5tPdecqNjO_BBZk
// (perdon profe, me quedo un poco mas largo que de 2 minutos )

int cant = 3;
int tam;
int cantInicial;
int tamInicial;
PImage img;
int calcularCantidadTotal() {
  return cant * cant;  
}
void setup() {
  size(800, 400);
  tam = width/cant/2; 
  cantInicial = cant;
  tamInicial = tam;
  img = loadImage ("OpArt.jpeg");
}

void draw() {
  background(0);
  println("Cantidad total de elementos en la grilla: " + calcularCantidadTotal());
  image (img, 0,0, width/2, height);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if ((x+y)%2==0) {
        fill(52,28,214);
        rect(width - tam*(x+1), y*tam, tam, tam); 
        fill(12,8,36);
        ellipse(width - tam*(x+1) + tam/2, y*tam+tam/2, tam, tam);  
      } else {
        fill(12,8,36);
        rect(width - tam*(x+1), y*tam, tam, tam);  
        fill(52,28,214);
        ellipse(width - tam*(x+1) + tam/2, y*tam+tam/2, tam, tam);  
      }
    }
  }
}

void mousePressed() {
  cant++;
  tam = width/cant/2;  
}

void keyPressed() {
  if (key == 'r') {
    cant = cantInicial;
    tam = tamInicial;
  }
}
