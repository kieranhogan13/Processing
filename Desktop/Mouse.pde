class Mouse extends Entity
{
  //Global Variables
  
  //Constructor
  Mouse()
  {
    
  }
  
  //Functions
  void run()
  {
    display();
  }
  
  void display()
  {
    //Mouse Shape
    fill(255);
    stroke(0);
    beginShape();
    vertex(X, Y);
    vertex(X, Y+15);
    vertex(X+4, Y+12);
    vertex(X+7, Y+18);
    vertex(X+10, Y+20);
    vertex(X+7, Y+11);
    vertex(X+11, Y+11);
    endShape(CLOSE);
    
  }
}
