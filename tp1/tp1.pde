//cargamso imagen 
PImage retrato;

void setup(){
  //tamaño lienzo
  size(800,400);
  //fondo
  background(232,227,173);
  //espacio de imagen 
retrato = loadImage("retrato.png");
 retrato.resize (400,400);
}
void draw () {
  //imagen
  println (mouseX + "/" +mouseY);
image (retrato,0,0);


//mi dibujo 
noStroke();
//cuerpo
fill(80);
beginShape();
vertex(736,224);
vertex(759,223);
vertex(800,292);
vertex(800,400);
vertex(723,400);
vertex(647,288);
endShape(CLOSE);

beginShape(QUADS);
vertex(626,342);
vertex(670,400);
vertex(545,400);
vertex(583,329);
endShape();

beginShape();
vertex(490,288);
vertex(450,301);
vertex(400,367);
vertex(400,400);
vertex(535,400);
endShape(CLOSE);


//cuello
fill(185,154,114);
beginShape();
vertex(639,247);
vertex(588,300);
vertex(583,329);
vertex(626,342);
vertex(647,286);
vertex(627,293);
endShape(CLOSE);

fill(170,142,108);
triangle(639,247,627,293,647,286);

triangle(639,247,589,247,585,305);


//pelo lado derecho
fill(124,113,67);
beginShape ();
vertex(667,38);
vertex(703,70);
vertex(712,167);
vertex(598,157);
vertex(622,76);
endShape(CLOSE);


//cabeza 
fill(198,151,112);
ellipse(611,158,150,191);
   //ojos
fill(219);
beginShape();
vertex(677,162);
vertex(670,165);
vertex(656,160);
vertex(663,157);
endShape(CLOSE);

beginShape();
vertex(630,151);
vertex(617,151);
vertex(605,145);
vertex(610,141);
vertex(619,143);
endShape(CLOSE);

   //cejas
   fill(116,89,63);
beginShape();
vertex(660,144);
vertex(665,141);
vertex(678,142);
vertex(685,148);
vertex(684,152);
vertex(676,145);
endShape(CLOSE);

beginShape();
vertex(636,137);
vertex(633,132);
vertex(617,123);
vertex(606,125);
endShape(CLOSE);

   //sobra ojo derecho 
   fill(170,123,84);
   beginShape();
   vertex(660,144);
   vertex(676,145);
   vertex(684,152);
   vertex(677,162);
   vertex(663,157);
   vertex(656,160);
   endShape(CLOSE);

   //sombra ojo izquierdo
   beginShape();
   vertex(636,137);
   vertex(606,125);
   vertex(605,145);
   vertex(610,141);
   vertex(619,143);
   vertex(630,151);
   endShape(CLOSE);
   
 //nariz y sombra
 triangle(653,202,634,201,623,193);
 beginShape();
 vertex(636,137);
 vertex(643,155);
 vertex(624,193);
 vertex(627,172);
 vertex(616,151);
 vertex(630,151);
 endShape(CLOSE);
   
   
 //boca labio superior
 beginShape();
 vertex(632,207);
 vertex(627,204);
 vertex(598,203);
 vertex(630,212);
 vertex(645,217);
 vertex(639,208);
 endShape(CLOSE);
 
 //boca labio inferior
 fill(209,161,137);
 beginShape();
 vertex(640,215);
 vertex(633,222);
 vertex(622,219);
 vertex(610,207);
 vertex(629,212);
 endShape(CLOSE);
 
 fill(170,123,84);
 beginShape();
 vertex(633,222);
 vertex(622,219);
 vertex(616,221);
 vertex(635,228);
 endShape(CLOSE);
 
 

//pelo lado derecho
fill(124,113,67);
beginShape ();
vertex(712,167);
vertex(736,225);
vertex(694,262);
vertex(639,247);
vertex(684,187);
vertex(676,164);
vertex(686,150);
vertex(710,152);
endShape(CLOSE);

beginShape();
vertex(694,262);
vertex(704,303);
vertex(647,286);
vertex(639,247);
endShape(CLOSE);

beginShape();
vertex(704,303);
vertex(698,356);
vertex(626,342);
vertex(647,286);
endShape();

beginShape();
vertex(698,356);
vertex(724,400);
vertex(670,400);
vertex(626,342);
endShape();


//pelo lado izquierdo
fill(183,167,103);
beginShape();
vertex(667,38);
vertex(559,47);
vertex(528,83);
vertex(614,94);
endShape(CLOSE);

fill(198,181,112);
beginShape();
vertex(614,94);
vertex(528,83);
vertex(513,141);
vertex(597,156);
endShape(CLOSE);

beginShape();
vertex(598,156);
vertex(577,176);
vertex(491,194);
vertex(513,141);
endShape(CLOSE);

fill(183,167,103);
beginShape();
vertex(577,176);
vertex(594,263);
vertex(520,259);
vertex(491,194);
endShape(CLOSE);

fill(198,181,112);
beginShape();
vertex(594,263);
vertex(580,346);
vertex(490,288);
vertex(520,259);
endShape(CLOSE);

fill(183,167,103);
beginShape();
vertex(580,346);
vertex(545,400);
vertex(535,400);
vertex(490,288);
endShape(CLOSE);


}
