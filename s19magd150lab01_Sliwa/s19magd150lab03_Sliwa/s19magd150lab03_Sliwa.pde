float w;
float h; 
float c1x,c1y;
void setup(){
size(500,500);
println(4*8+ "," + (4000+3000));
w =0;
h=0;
c1x=0;
c1y=0;

}


void draw(){
  background(81,127,250);
  fill(frameCount%37,90,229);
  ellipse(50,50, w%(width/3),  h%(height/3));
  println("The top ellipse is" + dist(0,0,mouseX,mouseY)+ " pixels long.");
  fill(frameCount%218,18,250);
  ellipse(300,400, w%(width/6), h%(height/6));
  fill(frameCount%250,13,68);
  ellipse(400,200, w%(width/4), h%(height/4));
  w= w+1;
  h++;
  rectMode(CENTER);
  rect(mouseX,mouseY,200,200);
  c1x = map(mouseX,0,width,90,200);
  c1y = map(mouseX,0,height,100,100);
  ellipse(c1x,c1y,50,50);

  

}
