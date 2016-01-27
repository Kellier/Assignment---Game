class Player1
{
  //Fields
  float rad;
  float centre;
  float rectx, recty;
  float speed;
  float w, h;
  
  //Constructor
  Player1()
  {
    rad = 40;
    rectx = 30;
    recty = height / 2 - 60;
    speed = 5.0f;
    w = 5;
    h = 120;
  }
  
  void move()
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
  
  void Ply1()
  {
    stroke(227, 11, 11);
    fill(227, 11, 11);
    rect(rectx, recty, w, h);
  }
    
}