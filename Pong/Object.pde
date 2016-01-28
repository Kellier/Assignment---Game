abstract class Object
{
  float rectx, recty;
  float recta;
  float w, h;
  int pitchx, pitchy;
  float rad;
  float bx, by;
  float br;
  float speedx;
  float speedy;
  color c;
  
  Object()
  {
    this.rectx = 30;
    this.recty = height / 2 - 60;
    this.recta = width - 40;
    this.w = 5;
    this.h = 120;
    this.pitchx = width / 2;
    this.pitchy = height;
    this.rad = 100;
    this.bx = width / 2;
    this.by = height / 2;
    this.br = 10;
    this.speedx = random(3,5);
    this.speedy = random(3,5);
  }
  
  abstract void position();
  abstract void thing();
}
    