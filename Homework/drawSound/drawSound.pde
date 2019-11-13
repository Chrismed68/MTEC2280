 7opimport processing.sound.*;
SoundFile file;
int thickness = 1;
int alpha = 20;
PImage img;

void setup()
 {
  file = new SoundFile(this,"Giogio.mp3");
   fullScreen();
   background(200,90,87);
 }
 
 void draw()
 {
   textAlign(CENTER, CENTER);//centers text on x and y axis

   textSize(30);//textsize is fontsize which is 24
   text("Press L to draw line \n Press e to draw erase \t Press t for triangle shape \n Press c for circle shape \t Press w for rectangle shape \n Press r to change color red \t Press g to change color green \t Press b to change color to blue \n Press x random color", width/2, height/4);
 }
 // execute the following when the mouse is
 // clicked and move simuateniously
 void mouseDragged()
 {
   //ellipse(mouseX,mouseY,10,10);
   //stroke(255,0,0);
   // dra a line from where the mouse is now
   // to where it was last frame
   if( key == 'l')
   {
    line(mouseX,mouseY,pmouseX,pmouseY);
   }
   if( key == 'e')//suppose to be erase
   {
    line(mouseX,mouseY,pmouseX,pmouseY); 
    stroke(200,90,87);
   }
   if( key == 'c')
   {
    ellipse(mouseX,mouseY,40,40);
   }
   if( key == 't')
   {
    triangle(mouseX-30,mouseY,mouseX,mouseY-30,mouseX+30,mouseY);
   }
   if( key == 'w')
   {
    rect(mouseX,mouseY,40,40);
   }
 }
 
  void keyPressed()
 {       
    
    img = loadImage("GIOGIO.png");
   // print out key when pressed
   // two equal signs for if statements, bool
   //when talking about key board key use single quotes'
   println(key);
   if(key == 'r')
   {
    stroke(255,0,0); // change stroke to red
   }
   if(key == 'g')
   {
    stroke(0,255,0); // change stroke to green
   }
   
   println(key);
   if(key == 'b')
   {
    stroke(0,0,255); // change stroke to blue
   }
   //for up and down keys
     // if user pressed the UP key
     //thickness = thickness + 1 to constantly add 1 to value as long as key is pressd
     //strokeWeight(thickness) stroke is equal to thickness
     //print thickness to see value increase

    if(keyCode == UP)// increases stroke weight
    {
      println("thickness",  thickness);
      thickness = thickness + 1;
      strokeWeight(thickness);
    }   
    if(keyCode == DOWN)// decreases stroke weight
    {
      println("thickness",  thickness);
      thickness = thickness - 1;
      strokeWeight(thickness); 
    }
    int x = 0;
    if(key == 'i')
    {
    for(int i = 0; i < width; i += 10)
    {
    line(i,random(0,height),0,i); 
    }
    for(int i = width; i >= -width; i -= 10)
    {
    line(x,random(0,height),width,i); 
    x = x + 10;
    } 
    }
     if( key =='x') // randomly changes fill color
    {
     fill(random(1,255),random(1,255),random(1,255));
     stroke(random(1,255),random(1,255),random(1,255));
    }
    if( key =='p')//clears the screen
    {
     file.play();
     img = loadImage("GIOGIO.png");
     image(img, width/3.6, height/4, width/2, height/1.3); 
    } 

   if( key =='z')//clears the screen
   {
     file.pause();
     background(200,90,87,90);
   }  
 }
