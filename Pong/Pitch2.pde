class Pitch2 extends Pitch
{
  //Fields
  float radius = 50;
  float y = height / 2;
  
  void barrier()
  {
    stroke(0);
    fill(0);
    rect(0, 0, w, h);
    rect(0, 690, w, h);
    rect(0, 0, 10, 150);
    rect(0, 550, 10, 150);
    rect(990, 0, 10, 150);
    rect(990, 550, 10, 150);
  }
  
  void wall()
  {
    stroke(11, 39, 10);
    fill(11, 39, 10);
    ellipse(x, y - 75, radius, radius);
    ellipse(x, y - 25, radius, radius);
    ellipse(x, y + 25, radius, radius);
    ellipse(x, y + 75, radius, radius);
  }
}