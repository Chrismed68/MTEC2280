void setup(){
  size(600,600);
  background(123,213,221,180);
}


void draw(){
  

}

void keyPressed(){
   if (key == 'a') {
     noStroke();
     fill(255,0,255);
     rect(mouseX, mouseY, 50, 50);
   }
   
}
