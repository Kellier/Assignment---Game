class Object
{
  PVector pos;
  PVector move;
  float theta = 0.0f;
  float rectx;
  float recty;
  float speed = 5.0f;
  color c;
  
  Object()
  {
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.rectx = 30;
    this.recty = height * 0.5f - 60;
    this.theta = 0.0f;
  }
  
  void position()
  {
  }
  
  void thing()
  {
  } 
}