abstract class Object
{
  PVector pos;
  PVector move;
  float theta = 0.0f;
  float rectx, recty, recta;
  float speed = 5.0f;
  float speedx, speedy;
  float wallx, wally;
  float wallw, wallh;
  float w, h;
  color c;
  
  Object()
  {
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.theta = 0.0f;
    this.rectx = 0.0f;
    this.recty = 0.0f;
    this.recta = 0.0f;
    this.wallx = 0.0f;
    this.wally = 0.0f;
    this.wallw = 20;
    this.wallh = 180;
    this.speedx = random(3, 5);
    this.speedy = random(3, 5);
    this.w = 5;
    this.h = 120;
    
  }
  
  abstract void position();
  abstract void thing(); 
}