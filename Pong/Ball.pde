class Ball extends Player2
{
  float bx;
  float by;
  float br;
  float speedx;
  float speedy;
  
  Ball()
  {
    bx = width / 2;
    by = height / 2;
    br = 10;
    speedx = random(3, 5);
    speedy = random(3, 5);
  }
  
  void bounce()
  {
    if((bx > recta) && (by >= rectb) && (by <= rectb + h))
    {
      speedx = -speedx;
    }
    
    if((bx < rectx) && (by >= recty) && (by <= recty + h))
    {
      speedx = -speedx;
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
  
  void bll()
  {
    fill(255);
    stroke(255);
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