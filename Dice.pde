  Die one, two, three, four, five, six, seven, eight, nine, ten;
  int total = 0;
  void setup()
  {
      noLoop();
      size(1700,1000);
      one = new Die(150,200);
      two = new Die(450,200);
      three = new Die(750,200);
      four = new Die(1050,200);
      five = new Die(1350,200);
      six = new Die(150,550);
      seven = new Die(450,550);
      eight = new Die(750,550);
      nine = new Die(1050,550);
      ten = new Die(1350,550);
  }
  void draw()
  {
      background(0);
      one.roll();
      one.show();
      two.roll();
      two.show();
      three.roll();
      three.show();
      four.roll();
      four.show();
      five.roll();
      five.show();
      six.roll();
      six.show();
      seven.roll();
      seven.show();
      eight.roll();
      eight.show();
      nine.roll();
      nine.show();
      ten.roll();
      ten.show();
      textSize(50);
      fill(255,255,255);
      text("The total of all dice is " + total + " !",500,500);
      total = 0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY,myRoll,n;
      Die(int x, int y) //constructor
      {
          myRoll = 0;
          myX = x;
          myY = y;
      }
      void roll()
      {
          myRoll = (int)(Math.random()*6)+1;
          total += myRoll;
      }
      void show()
      {
          fill(255,255,255);
          rect(myX,myY,200,200);
          fill(0,0,0);
          if(myRoll == 1){
            ellipse(myX+100,myY+100,40,40);
          }else if(myRoll == 2){
            ellipse(myX+60,myY+100,40,40);
            ellipse(myX+140,myY+100,40,40);
          }else if(myRoll == 3){
            ellipse(myX+60,myY+50,40,40);
            ellipse(myX+100,myY+100,40,40);
            ellipse(myX+140,myY+150,40,40);
          }else if(myRoll == 4){
            ellipse(myX+60,myY+50,40,40);
            ellipse(myX+140,myY+50,40,40);
            ellipse(myX+60,myY+150,40,40);
            ellipse(myX+140,myY+150,40,40);
          }else if(myRoll == 5){
            ellipse(myX+60,myY+50,40,40);
            ellipse(myX+140,myY+50,40,40);
            ellipse(myX+100,myY+100,40,40);
            ellipse(myX+60,myY+150,40,40);
            ellipse(myX+140,myY+150,40,40);
          }else if(myRoll == 6){
            ellipse(myX+60,myY+50,40,40);
            ellipse(myX+140,myY+50,40,40);
            ellipse(myX+60,myY+100,40,40);
            ellipse(myX+140,myY+100,40,40);
            ellipse(myX+60,myY+150,40,40);
            ellipse(myX+140,myY+150,40,40);
          }
      }
  }
