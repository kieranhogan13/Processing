class Toolbar extends Entity
{
  //Global Variables
  float x1 = 0;
  float y1 = 576;
  float xwidth = 800;
  float yheight = 24;
  
  //Constructor
  Toolbar()
  {
    
  }
  
  //Functions
  void run()
  {
    display();
  }
  
  void display()
  {
    //ToolbarMain
    fill(200);
    rect(x1, y1, xwidth, yheight);
    
    //StartBox
    stroke(0);
    fill(200);
    rect(2, 579, 75, 18);
    textSize(18);
    fill(50);
    text("Start", 35, 595); 

    //WindowsLogo
    fill(0);
    rect(14, 581, 16, 14);
    fill(255, 0, 0);
    rect(17, 583, 5, 4);
    fill(0, 255, 0);
    rect(23, 583, 5, 4);
    fill(0, 0, 255);
    rect(17, 588, 5, 4);
    fill(255, 255, 0);
    rect(23, 588, 5, 4);
    line(5, 582, 14, 582);
    stroke(255, 0, 0);
    line(5, 586, 14, 586);
    stroke(0, 0, 255);
    line(5, 590, 14, 590);
    stroke(0);
    line(5, 594, 14, 594);
    
    //TimeBox
    stroke(0);
    fill(200);
    rect(730, 579, 67, 18);
    textSize(14);
    fill(50);
    text("16:00", 755, 594); 
        
  }
}
