  Die one, two, three, four, five, six, seven, eight, nine, ten;
  int total = 0;
  void setup()
  {
      noLoop();
      size(850,500);
      one = new Die(75,100);
      two = new Die(225,100);
      three = new Die(375,100);
      four = new Die(525,100);
      five = new Die(675,100);
      six = new Die(75,225);
      seven = new Die(225,225);
      eight = new Die(375,225);
      nine = new Die(525,225);
      ten = new Die(675,225);
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
      textSize(25);
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
          rect(myX,myY,100,100);
          fill(0,0,0);
          if(myRoll == 1){
            ellipse(myX+50,myY+50,20,20);
          }else if(myRoll == 2){
            ellipse(myX+30,myY+50,20,20);
            ellipse(myX+70,myY+50,20,20);
          }else if(myRoll == 3){
            ellipse(myX+30,myY+25,20,20);
            ellipse(myX+50,myY+50,20,20);
            ellipse(myX+70,myY+75,20,20);
          }else if(myRoll == 4){
            ellipse(myX+30,myY+25,20,20);
            ellipse(myX+70,myY+25,20,20);
            ellipse(myX+30,myY+75,20,20);
            ellipse(myX+70,myY+75,20,20);
          }else if(myRoll == 5){
            ellipse(myX+30,myY+25,20,20);
            ellipse(myX+70,myY+25,20,20);
            ellipse(myX+50,myY+50,20,20);
            ellipse(myX+30,myY+75,20,20);
            ellipse(myX+70,myY+75,20,20);
          }else if(myRoll == 6){
            ellipse(myX+30,myY+25,20,20);
            ellipse(myX+70,myY+25,20,20);
            ellipse(myX+30,myY+50,20,20);
            ellipse(myX+70,myY+50,20,20);
            ellipse(myX+30,myY+75,20,20);
            ellipse(myX+70,myY+75,20,20);
          }
      }
  }
