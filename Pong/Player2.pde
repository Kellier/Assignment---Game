class Player2 extends Object
{  
  void position()
  {
    if(keyPressed)
    {
      if(key == 'o')
      {
        if(recty >= 0)
        {
          recty = recty - h * 0.2;
        }
      }
      if(key == 'l')
      {
        if(recty <= height - h)
        {
          recty = recty + h * 0.2;
        }
      }
    }
  }
  void thing()
  {
    stroke(7, 29, 103);
    fill(7, 29, 103);
    rect(recta, recty, w, h);
  }

}