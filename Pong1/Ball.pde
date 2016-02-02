class Ball extends Object
{
  float br = 10;
  char reset;
  
  Ball()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
  }
  
  Ball(char reset, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.reset = reset;
    this.c = c;
  }
  
  void position()
  {
    if((pos.x >= recta) && (pos.x <= recta + w) && (pos.y >= recty) && (pos.y <= recty + h))
    {
      speedx = -speedx;
      c = color(7, 29, 103);
    }
    
    if((pos.x <= rectx) && (pos.x <= rectx + w) && (pos.y >= recty) && (pos.y <= recty + h))
    {
      speedx = -speedx;
      c = color(227, 11, 11);
    }
    
    if(pos.y > height - 10)
    {
      speedy = -speedy;
    }
    
    if(pos.y < 10)
    {
      speedy = -speedy;
    }
    
    if(keys[reset])
    {
      reset();
    }
    
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    ellipse(0, 0, br * 2, br * 2);
    popMatrix();
  }
  
  void reset()
  {
    speedx = random(3, 5);
    speedy = random(3, 5);
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }
}