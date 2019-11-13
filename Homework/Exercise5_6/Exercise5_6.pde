float shade0 = 0;
float shade1 = 0;
float shade2 = 0;
float shade3 = 0;

void setup() { 
  size(200,200); 
} 

void draw() { 
  // Draw the background
  background(0); 

  // Depending on the mouse location, a 
  // different rectangle is set to brightness 255
  if (mouseX < 100 && mouseY < 100) { 
    shade0 = 255;
  } 
  else if (mouseX > 100 && mouseY < 100) { 
    shade1 = 255;
  } 
  else if (mouseX < 100 && mouseY > 100) { 
    shade2 = 255;
  } 
  else if (mouseX > 100 && mouseY > 100) { 
    shade3 = 255;
  } 

  // All rectangles always fade
  shade0 = shade0 - 1;
  shade1 = shade1 - 1;
  shade2 = shade2 - 1;
  shade3 = shade3 - 1;

  // Fill color and draw each rectangle
  noStroke(); 
  fill(shade0);
  rect(0,0,100,100); 
  fill(shade1);
  rect(100,0,100,100); 
  fill(shade2);
  rect(0,100,100,100); 
  fill(shade3);
  rect(100,100,100,100); 
  
  // Draw grid lines
  stroke(255); 
  line(100,0,100,200); 
  line(0,100,200,100); 

} 
