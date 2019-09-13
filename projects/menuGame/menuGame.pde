//global area where it can affect setup and draw
int fontSize = 120; // so we can change font size at run time 
int menuState = 1;
int gameState1 = 2;
int gameState2 = 3;

PImage img;
void setup()
{
  fullScreen();
  img = loadImage("3a0.png");
}

void draw()
{
  //first draw drop shadow text
  delay(0);
  background(255, 90, 70);// background refreshes

  textAlign(CENTER, CENTER);//centers text on x and y axis

  textSize(fontSize);//textsize is fontsize which is 24
  text("Nightmare Before Easter", width/2, height/4);

  delay(250);
  fill(random(1, 255), random(1, 255), random(1, 255),random(1, 255));
  text("Nightmare Before Easter", width/2+2, height/4+2);// prints the words hello world

  
  rectMode(CENTER);

  fill(255, 90, 70);
  if (menuState == 1) {
    rect(width/2, height/4 + 160, 75, 25);
  }

  if (menuState == 2) {
    rect(width/2, height/4 + 200, 75, 25);
  }
  if (menuState == 3) {
    rect(width/2, height/4 + 240, 75, 25);
  }

  fill(0);
  textSize(15);
  text("World 1", width/2, height/4 + 160);
  text("World 2", width/2, height/4 + 200);
  text("Exit", width/2, height/4 + 240);
  
  if (gameState1 == 1){
    fullScreen();
    background(200, 150, 170);
    
    delay(500);
   
    textAlign(CENTER, CENTER);
    textSize(80);
    text("Chungus Easter Egg Hunt", width/2, height/7);
    
    
    image(img, width/3.6, height/2, width/2, height/2);
    fill(random(1,255),random(1,255),random(1,255),random(1,255));
    ellipse(random(width),(random(height)),140,155);

     
  }

  if (gameState2 == 2){
    fullScreen();
    background(20, 15, 10, 99);
    
    delay(250);
    fill(random(1,255),random(1,255),random(1,255),random(1,255));
    ellipse(random(width),(random(height)),140,155);
  }
}
void keyPressed()
{

  if (keyCode == DOWN) {
    if (menuState < 3) {
      println("menuState", menuState);
      menuState = menuState + 1;
    }
  }
  if (keyCode == UP)// 
  {
    if (menuState > 1) {
      println("menuState", menuState);
      menuState = menuState - 1;
    }
  }
  if (key =='a') {
    if (menuState == 1 || menuState == 2) {
      gameState1 = 2;
      gameState2 = 3;
    }
  }
  if (key ==' ') {
    if (menuState == 1) {
      gameState1 = 1;
    }
  }
  if (key ==' ') {
    if (menuState == 2) {
      gameState2 = 2;
    }
  }
  if (key ==' ') {
    if (menuState == 3) {
      exit();
    }
  }
 }
