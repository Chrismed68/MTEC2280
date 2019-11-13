void setup() {
  size(500,500);
}


void draw() {
  background(91,84,90);
  stroke(0);
  fill(175,59,20);
  
  line(0,0,width,height);// line 1
  line(width,0,0,height);// line 2 
  
  rect(width/8,height/2,width/8,height/8);// rect on left
  rect(7*width/8,height/2,width/8,height/8); // rect on right
  
  rectMode(CENTER);
  ellipse(width/2,height/2,width/3,height/3);// ellispe in center
  
}
