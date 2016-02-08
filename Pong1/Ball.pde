//Class for Ball which inherits the abstract class Object
class Ball extends Object
{
  //Fields for ball
  float br = 10;
  char reset;
  float wallx, wally;
  float wallh, wallw;

  //Constructor with no return type
  Ball()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
    
    //Set the fields
    this.wallx = width / 2 - 10;
    this.wally = height / 2 - 90;
    this.wallw = 20;
    this.wallh = 180;
  }
  
  //Constructor with starting point and color return types
  Ball(char reset, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.reset = reset;
    this.c = c;
  }
  
  //Abstract method to set position of the ball
  void position()
  {
    //If statement which indicates what happens when the ball hits off the paddle for Player 2
    if((pos.x >= 970 - br) && (pos.x <= (970 - br) + w) && (pos.y >= recty) && (pos.y >= recty + h))
    {
      speedx = -speedx;
      c = color(7, 29, 103);
    }
    
    //If statement which indicates what happens when the ball hits off the paddle for Player 1
    if((pos.x <= 30 + br) && (pos.x >= (30 + br) + w) && (pos.y >= recty) && (pos.y >= recty + h))
    {
      speedx = -speedx;
      c = color(227, 11, 11);
    }
    
    //If statement which indicates what happens when the ball hits off the barrier in the Medium level
    if((pos.x >= wallx) && (pos.x <= wallx + wallh) && (pos.y >= wally) && (pos.y <= wally + wallh))
    {
      speedx = -speedx;
    }
    
    //If statement which indicates what happens when the ball hits off the barrier in the Medium level
    if((pos.x <= wallx) && (pos.x >= wallx + wallh) && (pos.y >= wally) && (pos.y <= wally + wallh))
    {
      speedx = -speedx;
    }
    
    //If statement so ball bounces off the walls
    if(pos.y > height - 20)
    {
      speedy = -speedy;
    }
    
    //If statement so ball bounces off the walls
    if(pos.y < 20)
    {
      speedy = -speedy;
    }
    
    //If statement that decrements the Player 2 lives and resets the ball position
    if(pos.x > width)
    {
      p2_lives --;
      reset();
    }
    
    //If statement that decrements the Player 1 lives and resets the ball position
    if(pos.x < 0)
    {
      p1_lives --;
      reset();
    }
        
    if(keys[reset])
    {
      reset();
    }
    
    //Increments the speed of the ball
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
  }
  
  //Abstract method to draw the ball using matrices and PVectors for the positions
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
  
  //Method to reset the position of the ball when it goes passed the walls
  void reset()
  {
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }
  
  //Method to restart the game with new lives and new positions
  void newgame()
  {
    speedx = 5;
    speedy = 5;
    p1_lives = 5;
    p2_lives = 5;
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }

}