class Pitch3 extends Pitch
{
  //Fields
  float radius = 50;
  float y = height / 2;
  float speed = 3;
  float yspeed = 0;
  
  void barrier()
  {
    stroke(0);
    fill(0);
    rect(0, 0, w, h);
    rect(0, 690, w, h);
    rect(0, 0, 10, 250);
    rect(0, 450, 10, 250);
    rect(990, 0, 10, 250);
    rect(990, 450, 10, 250);
  }
      
  void movewall()
  {
    if (y < (radius + h))
    {
      yspeed = -speed;
      y = radius + h;
    }
    if(y > height - (radius + h))
    {
      yspeed = speed;
      y = height - (radius + h);
    }
    
    y += yspeed;
  }
    
  void wall()
  {
    stroke(11, 39, 10);
    fill(11, 39, 10);
    ellipse(x, y - 75, radius, radius);
    ellipse(x, y - 25, radius, radius);
    ellipse(x, y + 25, radius, radius);
    ellipse(x, y + 75, radius, radius);
  }
 
}