
void setup()
{
  //size(500,500);
  //Creates a window that is full screen as the name suggest
  fullScreen();
}

void draw() 
{
 //rainbow Skittles
 fill(random(255),random(255),random(255),random(90,190));
 
 //draw a circle at a random location with randomw function
 ellipse(random(width),random(height),20,20);
 
 //draws random lines  at random heights and width
 line(random(width),random(height),random(width),random(height));
 
}
