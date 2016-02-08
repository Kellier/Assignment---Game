//Abstract/base class for all the other classes
abstract class Object
{
  //Fields
  //PVector for the positions of the different figures
  PVector pos;
  PVector move;
  float theta = 0.0f;
  //Fields for the paddles
  float rectx, recty, recta;
  //Field for speed
  float speed = 5.0f;
  float speedx, speedy;
  //Fields for the barrier
  float wallx, wally;
  float wallw, wallh;
  //Fields for width and height of paddles
  float w, h;
  //Field for color
  color c;
  //Fields for the lives of the players
  int p1_lives;
  int p2_lives;
  
  Object()
  {
    //Constructor chaining
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  //Set all fields for their corresponding classes
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.theta = 0.0f;
    this.rectx = 0.0f;
    this.recty = 0.0f;
    this.recta = 0.0f;
    this.wallx = 490;
    this.wally = 260f;
    this.wallw = 20;
    this.wallh = 180;
    this.w = 5;
    this.h = 120;
    this.speedx = 5;
    this.speedy = 5;
    p1_lives = 5;
    p2_lives = 5;
  }
  
  //Abstract methods for all the classes
  abstract void position();
  abstract void thing();
  abstract void newgame();
}