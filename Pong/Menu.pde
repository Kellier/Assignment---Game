class Menu
{
  //Fields
  float x, y;
  float rad;
  float centx, centy;
  float a;
  float centa;
  
  Menu()
  {
    x = width / 4;
    y = height / 2;
    rad = 80;
    centx = 275;
    centy = 475;
    a = width - 250;
    centa = 775;
  }
  
  void Figure1()
  {
    stroke(227, 11, 11);
    fill(227, 11, 11);
    ellipse(x, y - 200, rad, rad);
    line(x, y - 200, x, y + 50);
    line(x, y - 100, x - 25, y - 50);
    line(x, y - 100, x + 25, y - 50);
    line(x, y + 50, x - 25, y + 150);
    line(x, y + 50, x + 25, y + 50);
    line(x + 25, y + 50, x + 25, y + 100);
    stroke(255);
    fill(255);
    ellipse(x + 25, y + 125, rad / 2, rad /2);
  }
  
  void Figure2()
  {
    stroke(7, 29, 103);
    fill(7, 29, 103);
    ellipse(a, y - 200, rad, rad);
    line(a, y -200, a, y + 50);
    line(a, y - 100, a - 25, y - 50);
    line(a, y - 100, a + 25, y - 50);
    line(a, y + 50, a + 25, y + 150);
    line(a, y + 50, a - 25, y + 50);
    line(a - 25, y + 50, a - 25, y + 100);
    stroke(255);
    fill(255);
    ellipse(a - 25, y + 125, rad / 2, rad / 2);
  }
}