class Pitch extends Object
{
  int pitchx, pitchy;
  float rad;
  
  Pitch()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In Pitch Default Constructor");
    
    this.pitchx = width / 2;
    this.pitchy = height;
    this.rad = 100;
  }
  
  void position()
  {
    stroke(0);
    fill(0);
    rect(0, 0, width, 10);
    rect(0, 690, width, 10);
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
  
  void wall()
  {
    stroke(random(0 ,255), random(0, 255), random(0, 255));
    fill(random(0 ,255), random(0, 255), random(0, 255));
    rect(wallx, wally, wallw, wallh);
  }
  
  void newgame()
  {
  }
}

  