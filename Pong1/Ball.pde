class Ball extends Object
{
  float br = 10;
  char reset;
  int p1_lives = 5;
  int p2_lives = 5;
  
  Ball()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
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
    
    if(p1_lives == 0)
    {
      textAlign(CENTER);
      textSize(50);
      fill(227, 11, 11);
      text("Player 2 Wins!!", width / 2, height / 2);
      newgame();
    }
      
    else if(p2_lives == 0)
    {
      textAlign(CENTER);
      textSize(50);
      fill(7, 29, 103);
      text("Player 1 Wins!!", width / 2, height / 2);
      newgame();
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
  
  void reset()
  {
    speedx = 3;
    speedy = 3;
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