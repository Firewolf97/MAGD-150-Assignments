int COUNTER = 0;
int blue, posX;
int red;
boolean sun=false;
boolean boat=false;
void setup(){
  size(600,600);
  blue = 0;
  posX=0;

}

void draw(){
  
  background (0,217,252);
  if (boat){
    fill(12,48,240);
    rect(300,420,10,120);
    fill(240,12,20);
  quad(273,475,337,475,325,550,275,550);
  fill(12,48,240);
  fill(118,9,229);
  triangle(337,450,300,450,300,425);

  
  }
  pushStyle();
  colorMode(HSB, 360, 100, 100, 100);
  fill(206, blue, blue);
  noStroke();
  triangle(posX, 550, posX+25, 500, posX+50, 550);
 triangle(posX-50, 550, posX-25, 500, posX, 550);
  triangle(posX-100, 550, posX-75, 500, posX-50, 550);

  popStyle();
  blue = int(map(posX, 0, width, 0, 100));
  posX++;
  
  if (posX > width){
    posX=0;
  }
  
  for (int x=0; x<31 ; x++){
    noStroke();
    fill(0,0,255);
    arc(x*20, 550, 30,30, 0, PI);
  }

if (sun){
  
  fill( 200, 200, 10);
  ellipse(100, 100, 50, 50);
}


}

void mousePressed(){
  sun =!sun;
}

void keyPressed(){
  boat = !boat;
} 
