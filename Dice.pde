void setup(){
    size (430,445);
    noLoop();
}
//the amount of die
void draw(){
    text("", 300,680);
    int totalScore = 0;
    background(0);
    for (int y=10; y<400; y = y + 70)
    {
    for (int x=10; x<400; x = x + 70)
    {
//rolling the die
Die bob = new Die(x,y);
bob.roll();
bob.show();
totalScore=totalScore+bob.numberDot;
   }
}
  fill(255);
  textSize(15);
  text("Score is " + totalScore, 168, 438);
}

void mousePressed()
{
   redraw();

}
class Die{ 
  int myX, myY, numberDot;    
  Die (int x, int y)
{ 
  myX = x; 
  myY = y;
}
    
void roll(){
numberDot = (int)(Math.random()*6+1);
}

//the hard-to-map dots on the die
void show(){
noStroke();
fill(255);
rect(myX, myY, 60, 60);
fill(0);

  if (numberDot == 1){
    ellipse(myX+30, myY+30, 10, 10);
  } 
  else if (numberDot == 2){
    ellipse(myX+20, myY+30, 10, 10);
    ellipse(myX+40, myY+30, 10, 10);
  }
  else if (numberDot == 3){        
    ellipse(myX+30, myY+20, 10, 10);
    ellipse(myX+45, myY+40, 10, 10);
    ellipse(myX+15, myY+40, 10, 10); 
  }
  else if (numberDot == 4){
    ellipse(myX+20, myY+20, 10, 10);
    ellipse(myX+40, myY+20, 10, 10);
    ellipse(myX+20, myY+40, 10, 10);
    ellipse(myX+40, myY+40, 10, 10);
  }
  else if (numberDot == 5){
    ellipse(myX+20, myY+20, 10, 10);
    ellipse(myX+40, myY+20, 10, 10);
    ellipse(myX+20, myY+40, 10, 10);
    ellipse(myX+40, myY+40, 10, 10);
    ellipse(myX+30, myY+30, 10, 10);
  }
  else if (numberDot == 6){      
    ellipse(myX+10, myY+20, 10, 10);
    ellipse(myX+30, myY+20, 10, 10);
    ellipse(myX+50, myY+20, 10, 10);
    ellipse(myX+10, myY+40, 10, 10);
    ellipse(myX+30, myY+40, 10, 10);
    ellipse(myX+50, myY+40, 10, 10);
      }
   }
}
