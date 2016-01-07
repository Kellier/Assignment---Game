class Player1
{
  //Fields
  float y;
  float rad;
  float centre;
  float a, b;
  float speed;
  
  //Constructor
  Player1()
  {
    rad = 40;
    y = height / 2;
    a = 30;
    speed = 5.0f;
  }
  
  void move()
  {
    if(keyPressed)
    {
      if(key == 'w')
      {
        y -= 5;
      }
      if(key == 's')
      {
        y += 5;
      }
    }
  }
  
  void Ply1()
  {
    stroke(0);
    line(a, y - 60, a, y + 60);
    stroke(0);
    fill(227, 11, 11);
    ellipse(a, y, rad, rad);
  }
    
}