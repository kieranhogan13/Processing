//Main

// Global variables
float radius = 10.0;
int X, Y;
int nextX, nextY;
int delay = 1;
float ballX = 300;
float ballY = 300;

Toolbar toolbar1;
Game game1;
Mouse mouse1;
Ball ball1;

//Minim
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup()
{
  size(800, 600);
  strokeWeight(1);
  frameRate(60);
  X = width / 2;
  Y = height / 2;
  nextX = X;
  nextY = Y;

  toolbar1 = new Toolbar();
  game1 = new Game();
  mouse1 = new Mouse();
  ball1 = new Ball(ballX, ballY);
  
  //Minim startup sound created
  minim = new Minim(this);
  player = minim.loadFile("startup.mp3");
  player.play();

  
}

//Main draw loop
void draw()
{  
  background(18, 152, 140);
  noCursor();
  toolbar1.run();
  game1.run();
  reset();
  mouse1.run();
  
  //Track mouse
  X+=(nextX-X)/delay;
  Y+=(nextY-Y)/delay;
   
}

void reset()
{
  if (mousePressed == false) 
  {
    ball1.run();
  } 
  else
  {
    //Paused
    stroke(0);
    fill(100);
    rect(300, 200, 200, 200);
    textSize(20);
    fill(200);
    text("Paused", 365, 300); 
  }
}


//Set next mouse destination
void mouseMoved()
{
  nextX = mouseX;
  nextY = mouseY;  
}
