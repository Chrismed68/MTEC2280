void setup()
{

fullScreen();
background(255,50,90,20);
}

void draw()
{
  
}
// when a key is pressed,
//execute the folllowing code
void keyPressed()
{
  fill(random(255),random(255),random(255),random(90,190));
  triangle(mouseX,mouseY,random(width + random(250)),random(height + random(250)),random(width + random(250)),random(height + random(250)));
}
