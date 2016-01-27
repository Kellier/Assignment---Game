class Player2 extends Player1
{
  float recta, rectb;
  
  Player2()
  {
    recta = 960;
    rectb = 290;
  }
  
  void move()
  {
    if(keyPressed)
    {
      if(key == 'o')
      {
        if(rectb >= 0)
        {
          rectb = rectb - h * 0.2;
        }
      }
      if(key == 'l')
      {
        if(rectb <= height - h)
        {
          rectb = rectb + h * 0.2;
        }
      }
    }
  }
  void Ply2()
  {
    stroke(7, 29, 103);
    fill(7, 29, 103);
    rect(recta, rectb, w, h);
  }

}