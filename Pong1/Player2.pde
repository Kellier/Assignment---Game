class Player2 extends Object
{
  char up;
  char down;
  
  Player2()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player2 Default Constructor");
  }
  
  Player2(char up, char down, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.up = up;
    this.down = down;
    this.c = c;
  }
  
  void position()
  {
    move.mult(speed);
    
    if(keys[down])
    {
      pos.y += speed;
    }
    
    if(keys[up])
    {
      pos.y -= speed;
    }
    
    if(pos.y < 0)
    {
      pos.y = height;
    }
    
    if(pos.y > height)
    {
      pos.y = 0;
    }
      
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    rect(recta, recty, w, h);
    popMatrix();
  }
  
  void reset()
  {
  }
}
  
  