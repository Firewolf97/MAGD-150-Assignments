//imports sound and video.
PImage img; 
boolean toggle;
float x;
float y;
import processing.video.*;
import processing.sound.*;
SoundFile file;
Movie WW2;
//displays video and image 
void setup() {
  size(1000, 600);
  WW2 = new Movie(this,"airplanes.mp4");
  img = loadImage("soldiers.jpeg");
  //plays gunfire sound
  file = new SoundFile(this, "ww2 gunfire.wav");
  file.rate(2);
  file.play();

}

//makes the video and image come into view
void draw() {
  background(150);
  pushStyle();
  tint(255, 90);
  image(img, 0,0, 1000,600);
  popStyle();
  //plays video when mouse is pressed 
  if (toggle){
    pushStyle();
    imageMode(CENTER);
  image(WW2, x, y, 300,170);
  popStyle();
  
  }
}

void movieEvent(Movie m) {
  m.read();
}
  //loops the audio file when played with the image
  void mousePressed(){
    WW2.loop();
    file.loop();
    toggle = !toggle;
      x = mouseX;
      y = mouseY;
    
  
  
  
  
  
  
  
  }
  
