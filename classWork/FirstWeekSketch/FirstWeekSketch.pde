void setup() 
{
  size(800, 800); // create window
   
}
// draw happens in a loop forever after that
void draw()
{
  
  background(10, 70, mouseY/8); // b/c its here it constantly refreshes background
  fill(30, mouseX+2, mouseY*5, 90);
  stroke(255);
  //strokeWeight(10);
  ellipse(mouseX, mouseY, 100, 100); //mouseX,mouseY tracks mouse
  line(0,0,width,height); // draws line segement (x1,y1,x2,y2)
  
}
