class Ball extends Object
{  
  void position()
  {
    if((bx >= recta) && (bx <= recta + w) && (by >= recty) && (by <= recty + h))
    {
      speedx = -speedx;
      c = color(7, 29, 103);
    }
    
    if((bx <= rectx) && (bx <= rectx + w) && (by >= recty) && (by <= recty + h))
    {
      speedx = -speedx;
      c = color(227, 11, 11);
    }
    
    if(by > height - 10)
    {
      speedy = -speedy;
    }
    
    if(by < 10)
    {
      speedy = -speedy;
    }
    
    if(keyPressed)
    {
      if(key == 'r')
      {
        reset();
      }
    }
    
    bx = bx + speedx;
    by = by + speedy;
  }
  
  void barrier()
  {
    if((bx > wallx) && (by >= wally) && (by <= wally + wallh))
    {
      speedx = -speedx;
    }
    
    if((bx < wallx) && (by >= wally) && (by <= wally + wallh))
    {
      speedx = -speedx;
    }
  }
  
  void thing()
  {
    color(c);
    ellipse(bx, by, br * 2, br * 2);
  }
  
  void reset()
  {
    speedx = random(3, 5);
    speedy = random(3, 5);
    bx = width / 2;
    by = height / 2;
    br = 10;
  }
}