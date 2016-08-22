void setup()
{
  size (600, 600);
  board.setup();
}

Lifeboard board = new Lifeboard();


void draw()
{
  background(0);
  board.upadte();
  board.draw();
}

