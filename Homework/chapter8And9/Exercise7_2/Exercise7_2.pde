float x = 240;
float y = 180;
float w = 60;
float h = 60;
float eyeSize = 16;

void setup() {
  size(480, 270);
}

void draw() {
  background(75,40,30); 
  //This is draw zoog function
  drawZoog();
}


void drawZoog() {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    
    stroke(20);
    line(x - w/3, i, x + w/3, i);
  }
  //Zoog's body
  stroke(0);
  fill(175);
  rect(x, y, w/6, h);
  
  //Zoog's head
  stroke(0);
  fill(255);
  ellipse(x, y - h, w, h);
  
  //Zoog's eyes
  fill(60,90,20);
  ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
  ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
  
  //Zoog's legs
  stroke(0);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}
