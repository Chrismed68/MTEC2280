int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  drawBox();
}

void drawBox(){
   stroke(0);
  println(mouseX , mouseY);
  if (mouseX >= x && mouseY >= y && mouseX <= x+101 && mouseY <= y+76) {
    
    fill(25,79,90);
  } else {
    fill(0);
  }
  rect(x, y, w, h);
}
