int sum = 0;
void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
      sum = 0;
      fill(109, 3, 10);
      rect(0, 0, 500, 500);
      fill(10, 108, 3);
      rect(40, 40, 420, 420);
      for(int r = 50; r <= 400; r += 50){
        for(int c = 50; c <= 250; c += 50){
          Die die1 = new Die(r, c);
          die1.show();
        }
        System.out.println();
      }
      fill(255);
      text("You lose if you get a total below 75.", 50, 330);
      if(sum < 75){
        text("You lost with a total of: " + sum + ". Hand over the dough.", 50, 360);
      }else{
        text("You got a total of: " + sum + ". Congrats you get nothing.", 50, 360);
      }
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void show()
      {
          fill(255);
          rect(myX, myY, 50, 50, 7);
          if(1 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 25, myY + 25, 14, 14);
            sum = sum + 1;
          }else if(2 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 40, myY + 10, 14, 14);
            ellipse(myX + 10, myY + 40, 14, 14);
            sum = sum + 2;
          }else if(3 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 40, myY + 10, 14, 14);
            ellipse(myX + 25, myY + 25, 14, 14);
            ellipse(myX + 10, myY + 40, 14, 14);
            sum = sum + 3;
           }else if(4 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 40, myY + 10, 14, 14);
            ellipse(myX + 40, myY + 40, 14, 14);
            ellipse(myX + 10, myY + 10, 14, 14);
            ellipse(myX + 10, myY + 40, 14, 14);
            sum = sum + 4;
          }else if(5 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 40, myY + 10, 14, 14);
            ellipse(myX + 40, myY + 40, 14, 14);
            ellipse(myX + 25, myY + 25, 14, 14);
            ellipse(myX + 10, myY + 10, 14, 14);
            ellipse(myX + 10, myY + 40, 14, 14);
            sum = sum + 5;
           }else if(6 == (int)(Math.random()*6) + 1){
            fill(0);
            ellipse(myX + 40, myY + 10, 14, 14);
            ellipse(myX + 40, myY + 40, 14, 14);
            ellipse(myX + 40, myY + 25, 14, 14);
            ellipse(myX + 10, myY + 10, 14, 14);
            ellipse(myX + 10, myY + 40, 14, 14);
            ellipse(myX + 10, myY + 25, 14, 14);
            sum = sum + 6;
          }
      }
}
