class Game extends Entity
{
  //Global Variables
  float x1 = 50;
  float y1 = 50;
  float xwidth = 700;
  float yheight = 470;
  
  //Constructor
  Game()
  {
    
  }
  
  //Functions
  void run()
  {
    display();
  }
  
  void display()
  {
    //ToolbarIcon
    stroke(0);
    fill(200);
    rect(85, 579, 167, 18);
    textSize(16);
    fill(50);
    text("Gravity Demo", 110, 594);
    fill(255, 0, 255);
    ellipse(98, 588, 12, 12);
  
    //GameBorderMain
    fill(100);
    rect(x1, y1, xwidth, yheight);
    stroke(100);
    fill(200);
    rect(x1+1, y1+20, xwidth-2, yheight-20); 
    stroke(0);
    rect(xwidth+31, y1+1, 18, 18);
    line(xwidth+33, y1+3, xwidth+47, y1+17);
    line(xwidth+33, y1+17, xwidth+47, y1+3);
    textSize(16);
    fill(200);
    text("Gravity Demo", x1+20, 67); 
    fill(255, 0, 255);
    ellipse(x1+10, 60, 12, 12);
  }
    
}
