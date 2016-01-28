class Player1 extends Object
{  
  void position()
  {
    if(keyPressed)
    {      
      if(key == 'w')
      {
        if(recty >= 0)
        {
          recty = recty - h * 0.2;
        }
      }
      
      if(key == 's')
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
    stroke(227, 11, 11);
    fill(227, 11, 11);
    rect(rectx, recty, w, h);
  }
    
}