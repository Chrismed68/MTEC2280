// Rectangle starts at location x
float x = 0;
void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  // Display object
  fill(0);
  rect(x, 100, 20, 20);
  // Increment x
  x = x + 1;
if(x > 100){
  //println("100");
   x=100;
 //  x = x - 1;
    
 }
}
