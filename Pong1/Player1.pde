class Player1 extends Object
{
  char up;
  char down;
  
  Player1()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player1 Default Constructor");
  }
  
  Player1(char up, char down, float startx, float starty, color c)
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
    textSize(15);
    text("Lives: " + p1_lives, 30, recty);
    rect(rectx, recty, w, h);
    popMatrix();
  }
  
  void reset()
  {
  }
}