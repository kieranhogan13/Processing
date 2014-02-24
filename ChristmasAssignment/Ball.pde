class Ball extends Entity
{
  //Global Variables
  float x = 0;
  float y = 0;
  float speedX = 8;
  float speedY = 10;
  
  //Constructor
 Ball(float x1, float y1)
 {
    x = x1;
    y = y1;
 }
 
 //Functions
 void run()
 {
  display();
  moveMechanic();
  bounceMechanic();
  gravityMechanic();
 }
 
 void display()
 {
   stroke(0);
   fill(0, 255, 0);
   ellipse(x, y, 20, 20);
 }
 
 void moveMechanic()
 {
  x = x + speedX;
  y = y + speedY;
 }
 
 void gravityMechanic()
 {
 if (keyPressed)
 { 
   if (key == CODED)
   {
     if (keyCode == UP)
     {
       if (speedY < 5 || speedY > 1)
       {
         speedY = speedY - .5;
       }
     }
     
     else if (keyCode == DOWN)
     {
       if (speedX < 5 || speedX > 1)
       {
         speedY = speedY + .5;
       }
     }
     
     else if (keyCode == LEFT)
     {
       if (speedX < 10 || speedX > 1)
       {
         speedX = speedX - .5;
       }
     }
     
     else if (keyCode == RIGHT)
     {
       if (speedX < 10 || speedX > 1)
       {
         speedX = speedX + .5;
       }
     }
   }
   else
   {
     speedY = speedY + 1;
   }
  }
 }
 
 void bounceMechanic()
 {
  if (x < 70)
   {
     speedX = speedX * -1;
   } 
  if (x > 730)
   {
     speedX = speedX * -1;
   } 
  if (y > 80)
   {
     speedY = speedY * -1;
   } 
  if (y < 500)
   {
     speedY = speedY * -1;
   } 
 } 
}
