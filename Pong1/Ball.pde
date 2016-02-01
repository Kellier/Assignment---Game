class Ball extends Object
{
  float br = 10;
  
  Ball()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
  }
  
  Ball(float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.c = c;
  }
  
  void position()
  {
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    ellipse(0, 0, br * 2, br * 2);
    popMatrix();
  }
}