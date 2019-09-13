void setup() 
{
size(800,800);
   
}

void draw()
{
 
  background (20,mouseX+10,mouseY-50,90);//background chnages with mouse movement refresh background
  
  fill(20, mouseY-20, 73, mouseY+20);
  
  ellipse(width/2, height/2, mouseX, mouseY);// draw a circle at center screem, use the mouse's x and y to position to alter the width and height
 
  rect(306,306, 190,190);// make a rectangle 
  
  line(0,0, width, height);
  
  line(width,0, 0, height);
  
  
}
