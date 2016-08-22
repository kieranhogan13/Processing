class Lifeboard
{
  boolean [][] current;
  boolean [][] next;

  int cellWidth = 3;
  int cellHeight = 3;

  int boardWidth;
  int boardHeight;

  LifeBoard()
  {
  }

  void setup()
  {
    boardWidth = width/cellWidth;
    boardHeight = height/cellHeight;

    current = new boolean[boardHeight][boardWidth];
    next = new boolean[boardHeight][boardWidth];
  }

  void draw()
  {
    stroke (0);
    fill(0, 255, 0);
    for (int y = 0; y < boardHeight; y ++)
    {
      for (int x = 0; x < boardWidth; x ++)
      {
        if (isOn (x, y))
        {
          int cellX = x + cellWidth;
          int cellY = y + cellHeight;
          rect (cellX, cellY, cellWidth, cellHeight);
        }
      }
    }
  }

  void update()
  {
    clearBoard(next);
    for (int y = 0; y < boardHeight; y++)
    {
      for (int x = 0; x < boardWidth; x++)
      {   
        int count = countLiveCellsSurrounding(x, y);
        if (isOn (x, y))
        {
          if (count < 2)
          {
            next[y][x] = false;
          }
          if ((count == 2) || (count == 3))
          {
            next[y][x] = true;
          }
          if (count > 3)
          {
            next[y][x] = false;
          }
        }
        else
        {
          if (count == 3)
          {
            next[y][x] = true;
          }
        }
      }
    }
  }

  boolean[][] temp;
  temp = current;
  current = next;
  next = temp;
}

void clearBoard(boolean[][] board)
{
  for (int row = 0; row < boardHeight; row++)
  {
    for (int col = 0; col < boardWidth; col++)
    {
      off(col, row);
    }
  }
}

void randomise()
{
  //Alt algorithm
  //    for (int row = 0; row < boardHeight; row++)
  //  {
  //   for (int col = 0; col < boardWidth; col++)
  //   {
  //     float f = random();
  //       if (f < 0.5f)
  //       {
  //         on(col, row);
  //       }
  //   }  
  //  }

  int live = (boardWidth * boardHeight) / 2;
  while (live > 0)
  {
    int x = (int) random(boardWidth); 
    int y = (int) random(boardHeight);
    if (! isOn(x, y))
    {
      on(x, y);
      live --;
    }
  }
}

int countLiveCellsSurrounding(int x, int y)
{
  int count = 0;
  if (isOn(x-1, y-1)
  {
    count ++;
  }
  if (isOn(x, y -1)
  {
    count ++;
  }
  if (isOn(x+1, y -1)
  {
    count ++;
  }
  if (isOn(x-1, y)
  {
    count ++;
  }
  if (isOn(x-1, y+1)
  {
    count ++;
  }
  if (isOn(x+1, y+1)
  {
    count ++;
  }
  if (isOn(x+1, y-1)
  {
    count ++;
  }
  if (isOn(x, y+1)
  {
    count ++;
  }
  return count;
}



void on(int x, int y)
{
  if ((x >= 0) && (x < boardWidth) && (y >= 0) && (y < boardHeight))
  {
    current[y][x] = true;
  }
}

void isOn(int x, int y)
{
  if ((x >= 0) && (x < boardWidth) && (y >= 0) && (y < boardHeight))
  {
    return current[y][x];
  } 
  else
  {
    return false;
  }
}

void off(int x, int y)
{
  current[y][x] = false;
}







