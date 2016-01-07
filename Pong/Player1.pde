class Player1
{
  //Fields
  PVector dir;
  PVector pos;
  float y;
  float rad;
  float centre;
  float a, b;
  float speed;
  
  //Constructor
  Player1()
  {
    dir = new PVector(0, -1);
    rad = 40;
    b = height / 2;
    a = 30;
    speed = 5.0f;
  }
  
  void move()
  {
    dir.y = speed;
    dir.mult(speed);
    if(keyPressed)
    {
      if(key == 'w')
      {
        y --;
      }
      if(key == 's')
      {
        y ++;
      }
    }
  }
  
  void Ply1()
  {
    pushMatrix();
    stroke(0);
    line(a, y - 60, a, y + 60);
    stroke(0);
    fill(227, 11, 11);
    ellipse(a, y, rad, rad);
    popMatrix();
  }
    
}