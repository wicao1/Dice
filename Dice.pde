Die dice;
int sum = 0;
void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
}
void draw(){
  background(0);
  for(int y = 100 ; y <= 300 ; y = y + 100 ){
    for(int x = 100; x <= 300; x = x + 100){
      dice = new Die (x,y);
      dice.show();
      sum = sum + dice.numDots;
    }
  }
  fill(255);
  textSize(20);
  text("Sum of all dice: " + sum, 250, 50);
}
void mousePressed()
{
  redraw();
  sum = 0;
}
class Die //models one single dice cube
{  
  int numDots, myX, myY;

  Die(int x, int y) //constructor
  {
    numDots = (int)(Math.random()*6+1);
    myX = x;
    myY = y;  
  }
  
  void show()
  {  
    fill(255);
    rect(myX, myY, 100, 100, 28);
    if (numDots == 1) {
      fill(0);
      ellipse(myX+50, myY+50, 20, 20);
    }
    if (numDots == 2) {
      fill(0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
    }  
    if (numDots == 3) {
      fill(0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
    }
    if (numDots == 4) {
      fill (0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
    }
    if (numDots == 5) {
      fill (0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
    }
    if (numDots == 6) {
      fill (0);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+20, myY+50, 20, 20);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+80, myY+50, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
    }
  }
}
