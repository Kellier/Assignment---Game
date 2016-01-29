class Stars extends Object
{
  float rotSpeed;
  float rot;
  float points;
  float radius;
  
  Stars(float cx, float cy, float radius, color c, int points)
  {
    super(cx, cy, radius * 2);
    this.c = c;
    this.radius = radius;
    this.points = points;
    rot = 0.0f;
    rotSpeed = 0.01f;
  }
  
  void position()
  {
    rot += rotSpeed;
    if(rot > TWO_PI)
    {
      rot = 0;
    }
  }
  
  void thing()
  {
    float thetaInc = TWO_PI / (points * 2);
    float lastx, lasty;
    lastx = cx;
    lasty = cy - radius;
    
    stroke(c);
    
    for(int i = 1; i <= (points * 2); i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      float r;
      if(i % 2 == 1)
      {
        r = radius * 0.5f;
      }
      else
      {
        r = radius;        
      }

      x = cx + sin(theta) * r;
      y = cy -cos(theta) * r;
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
        
  }
}