abstract class Object
{
  float rectx, recty;
  float recta;
  float w, h;
  float wallx, wally;
  float wallw, wallh;
  int pitchx, pitchy;
  float rad;
  float bx, by;
  float br;
  float speedx;
  float speedy;
  color c;
  float cx, cy;
  
  
  Object()
  {
    this.rectx = 30;
    this.recty = height / 2 - 60;
    
    this.recta = width - 40;
    
    this.w = 5;
    this.h = 120;
    
    this.wallx = width / 2 - 10;
    this.wally = height / 2 - 90;
    this.wallw = 20;
    this.wallh = 180;
    
    this.pitchx = width / 2;
    this.pitchy = height;
    this.rad = 100;
    
    this.bx = width / 2;
    this.by = height / 2;
    this.br = 10;
    
    this.speedx = random(3,5);
    this.speedy = random(3,5);
    
    this.cx = random(0, width);
    this.cy = random(0, height);
  }
  
  abstract void position();
  abstract void thing();
}
    