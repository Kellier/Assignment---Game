class Ball extends Object
{
  float br = 10;
  char reset;
  float wallx, wally;
  float wallh, wallw;

  
  Ball()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
    
    this.wallx = width / 2 - 10;
    this.wally = height / 2 - 90;
    this.wallw = 20;
    this.wallh = 180;
  }
  
  Ball(char reset, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.reset = reset;
    this.c = c;
  }
  
  void position()
  {
    /*if((pos.x >= 970 - br) && (pos.y >= recty))
    {
      speedx = -speedx;
      c = color(7, 29, 103);
    }
    
    if((pos.x <= 30 + br) && (pos.y >= recty))
    {
      speedx = -speedx;
      c = color(227, 11, 11);
    }
    */
        
    if(pos.y > height - 20)
    {
      speedy = -speedy;
    }
    
    if(pos.y < 20)
    {
      speedy = -speedy;
    }
    
    if(pos.x > width)
    {
      p1_lives --;
      reset();
    }
    
    if(pos.x < 0)
    {
      p2_lives --;
      reset();
    }
        
    if(keys[reset])
    {
      reset();
    }
    
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
    
    if(frameCount % 350 == 0)
    {
      speedx ++;
      speedy ++;
    }
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    ellipse(0, 0, br * 2, br * 2);
    popMatrix();
    
    fill(227, 11, 11);
    textSize(30);
    text("Player 1:  " + p1_lives, 300, 40);
    
    fill(7, 29, 103);
    textSize(30);
    text("Player 2:  " + p2_lives, 600, 40);
  }
  
  void barrier()
  {
    if((pos.x >= wallx) && (pos.x <= wallx + wallh) &&(pos.y >= wally) && (pos.y <= wally + wallh))
    {
      speedx = -speedx;
    }
  }
    
  
  void reset()
  {
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }
  
  void newgame()
  {
    speedx = 3;
    speedy = 3;
    p1_lives = 5;
    p2_lives = 5;
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }

}