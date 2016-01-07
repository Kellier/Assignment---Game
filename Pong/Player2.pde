class Player2 extends Player1
{
  void move()
  {
    if(keyPressed)
    {
      if(key == 'o')
      {
        y -= 5;
      }
      if(key == 'l')
      {
        y += 5;
      }
    }
  }
  void Ply2()
  {
    stroke(0);
    line(a + 930, y - 60, a + 930, y + 60);
    stroke(7, 29, 103);
    fill(7, 29, 103);
    ellipse(a + 930, y, rad, rad);
  }
}