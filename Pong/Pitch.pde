class Pitch
{
  //Fields
  int h, w;
  int x, y;
  float rad;
  
  Pitch()
  {
    //Constructor
    h = 10;
    w = width;
    x = width / 2;
    y = height;
    rad = 100;
  }
  
  void barrier()
  {
    stroke(255);
    fill(255);
    rect(0, 0, w, h);
    rect(0, 690, w, h);
    rect(0, 0, 10, 100);
    rect(0, 600, 10, 100);
    rect(990, 0, 10, 100);
    rect(990, 600, 10, 100);
  }
  
  void lines()
  {
    stroke(255);
    line(x, 0, x, y);
    line(x, 350, x, 400);
    fill(35, 227, 23);
    ellipse(x, y / 2, rad, rad);
  }
}