int count=100;
void setup(){
  size(600,600);
  background(123,213,221,180);
}


void draw(){
  println(count); 
 if(count >= 0){
   count--;

 }
 }
void keyPressed(){
   if (key == 'a') {
     text(count,200,200);
   }
}
