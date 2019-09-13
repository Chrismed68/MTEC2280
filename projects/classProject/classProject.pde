void setup() 
{
  fullScreen();
   background(250, 0, 100);
}

void draw()
{
  
  fill(mouseX,0,mouseY);
  strokeWeight(random(1,10));
  triangle(random(width) + 600 ,random(height),random(width)+600,random(height),random(width)+600,random(height));
  line(random(width) + 600 ,random(height),random(width)+600,random(height));
  rect(random(width) + 600 ,random(height),random(width),random(height));
}
void keyPressed()
{

}
