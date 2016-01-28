class Pitch extends Object
{ 
  void position()
  {
    stroke(0);
    fill(0);
    rect(0, 0, width, 10);
    rect(0, 690, width, 10);
    rect(0, 0, 10, 100);
    rect(0, 600, 10, 100);
    rect(990, 0, 10, 100);
    rect(990, 600, 10, 100);
  }
  
  void thing()
  {
    stroke(255);
    fill(35, 227, 23);
    ellipse(pitchx, pitchy / 2, rad, rad);
    stroke(255);
    line(pitchx, 0, pitchx, pitchy);
    line(pitchx, 350, pitchx, 400);
  }
}