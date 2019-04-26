float xRotation, yRotation, x, y, z, scale, u, v, uOffset, vOffset;

PImage img;
PVector spherePos, boxPos, boxScale; 

void setup(){
  size(1000, 600, P3D);
   pixelDensity(displayDensity());
  background(64);
  noStroke();
  camera(300.0, 800.0, 900.0, 200.0, 200.0, 2.0, 
       0.0, 1.0, 1.0);
  
  img = loadImage("space.png");
  
  x = width / 2.0;
  y = height / 2.0;
  z = -500;
  scale = min(width, height) / 2.0;
  colorMode(RGB, 176,39,227);

u = 1;
v = 1;
 uOffset = 0;
 vOffset = 0;
   textureMode(NORMAL);
   textureWrap(REPEAT);
    
    spherePos= new PVector(width *.2, height/2, 0);
    boxPos = new PVector (width * .8, height/2,0);
}




void draw(){
  lights();
  //lights to enhance the shapes in lighting

directionalLight(1, 0.95, 0.84, -0.5, 0.5, -0.5);
ambientLight(100,150,200);
background(150);
//makes texture rotate. used example 10_9 meshes
xRotation = map(mouseY, -height / 2.0, height / 2.0, 0, TWO_PI);
yRotation = map(mouseX, -width / 2.0, width / 2.0, 0, TWO_PI);
  //draws texture into a cube
  pushMatrix();
  translate(x, y, z);
  rotateY(yRotation);
  rotateX(xRotation);
  scale(scale);
  //displays texture as a mesh
  beginShape();

  texture(img);
  vertex(-1, -1, 1, uOffset, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(1, -1, 1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, -1, uOffset + u, vOffset);
  vertex(-1, 1, -1, uOffset + u, vOffset + v); 
  vertex(1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, 1, uOffset + u, vOffset);
  vertex(-1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(-1, 1, 1, uOffset, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  beginShape();
  texture(img);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset + v);
  vertex(-1, -1, 1, uOffset, vOffset + v);
  endShape(CLOSE);  
  popMatrix();
  
  pushMatrix(); 
  //draws sphere onto window
  translate(spherePos.x, spherePos.y, spherePos.z);
  scale(scale);
  sphere(.25);
  popMatrix();
  //draws box onto window 
  pushMatrix();
  translate(boxPos.x, boxPos.y, boxPos.z);
  scale(scale);
  box(.30);
  
  
  
  popMatrix();
}
  
  
  
  
