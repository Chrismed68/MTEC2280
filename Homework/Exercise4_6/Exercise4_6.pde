// Declaring Variables.  
// zoogX and zoogY are for feature #1.  eyeR, eyeG, eyeB are for feature #2.
float zoogX;
float zoogY;
float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(200,200);        // Set the size of the window
  // Feature #1.  zoogX and zoogY are initialized based on the size of the window.  
  // Note we cannot initialize these variables before the size() function is called 
  // since we are using the built-in variables width and height.
  zoogX = width/2;      // Zoog always starts in the middle
  zoogY = height + 100; // Zoog starts below the screen
}

void draw() {

  background(255);  // Draw a white background 
  
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 
  
  // Draw Zoog's body
  stroke(0);
  fill(150);
  // Feature #1.  zoogX and zoogY are used for the shape locations.
  rect(zoogX,zoogY,20,100);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(zoogX,zoogY-30,60,60); 

  // Draw Zoog's eyes
  // Feature #2.  eyeR, eyeG, and eyeB are given random values and used in the fill() function.
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  fill(eyeR,eyeG,eyeB);
  
  ellipse(zoogX-19,zoogY-30,16,32); 
  ellipse(zoogX+19,zoogY-30,16,32); 

  // Draw Zoog's legs
  stroke(150);
  line(zoogX-10,zoogY+50,zoogX-10,height);
  line(zoogX+10,zoogY+50,zoogX+10,height);
  
  // Zoog moves up
  zoogY = zoogY - 1;
  
  // EXERCISE SOLUTION
  zoogX = zoogX + random(-3,3);

}
