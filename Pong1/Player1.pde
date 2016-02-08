//Class for Player1 which inherits the abstract class Object
class Player1 extends Object
{
  char up;
  char down;
  
  Player1()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player1 Default Constructor");
  }
  
  //Constructor with starting point, variables to move and color return types
  Player1(char up, char down, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.up = up;
    this.down = down;
    this.c = c;
  }
  
  //Abstract method to set position of Player 1
  void position()
  {
    //Set speed for the moving paddles
    move.mult(speed);
    
    //Set keys for moving down
    if(keys[down])
    {
      pos.y += speed;
    }
    
    //Set keys for moving up
    if(keys[up])
    {
      pos.y -= speed;
    }
    
    if(pos.y < 0)
    {
      pos.y = height;
    }
    
    if(pos.y > height)
    {
      pos.y = 0;
    }
      
  }
  
  //Abstract method to draw the padddle for Player 1 using matrices and PVectors for the positions
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    rect(rectx, recty, w, h);
    popMatrix();
  }
  
  void newgame()
  {
  }
}