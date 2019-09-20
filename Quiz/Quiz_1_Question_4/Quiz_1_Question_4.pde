
void setup(){
  size(600,600);
  background(123,213,221,180);
  
}


void draw(){



line(0,0,mouseX,mouseY);
line(600,0,mouseX,mouseY);
line(0,600,mouseX,mouseY);
line(600,600,mouseX,mouseY);
}
void keyPressed(){
  if (key == 'a') {
     background(random(1,255),random(1,255),random(1,255));
     line(0,0,mouseX,mouseY);
     line(600,0,mouseX,mouseY);
     line(0,600,mouseX,mouseY);
     line(600,600,mouseX,mouseY);
   }
}
