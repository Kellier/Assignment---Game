//Class for Player2 which inherits the abstract class Object
class Player2 extends Object
{
  char up;
  char down;
  
  Player2()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player2 Default Constructor");
  }
  
  //Constructor with starting point, variables to move and color return types
  Player2(char up, char down, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.up = up;
    this.down = down;
    this.c = c;
  }
  
  //Abstract method to set position of Player 2
  void position()
  {
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
  
  //Abstract method to draw the padle for Player 2 using matrices and PVectors for the positions
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    rect(recta, recty, w, h);
    popMatrix();
  }
  
  void newgame()
  {
  }

}
  
  