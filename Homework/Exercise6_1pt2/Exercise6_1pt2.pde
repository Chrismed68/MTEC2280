size(200, 200);
background(25,60,90);
float w = width ;
while (w > 0) {
  stroke(0);
  fill(w);
  ellipse(width/2,height/2,w,w);
  w = w - 20;
}
