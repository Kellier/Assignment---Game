class Ball extends Player2
{
  float bx;
  float by;
  float br;
  float dx = random(1, 5);
  float dy = random(1, 5);
  
  Ball()
  {
    bx = width / 2;
    by = height / 2;
    br = 10;
  }
  
  void bounce()
  {
    if((bx > recta) && (by >= rectb) && (by <= rectb + h))
    {
      dx = -dx;
    }
    
    if((bx < rectx) && (by >= recty) && (by <= recty + h))
    {
      dx = -dx;
    }
    
    if(by > height - 10)
    {
      dy = -dy;
    }
    
    if(by < 10)
    {
      dy = -dy;
    }
    
    bx = bx + dx;
    by = by + dy;
  }
  
  void bll()
  {
    ellipse(bx, by, br * 2, br * 2);
  }
}