class Pitch3 extends Pitch
{
  void barrier()
  {
    stroke(255);
    fill(255);
    rect(0, 0, w, h);
    rect(0, 690, w, h);
    rect(0, 0, 10, 250);
    rect(0, 450, 10, 250);
    rect(990, 0, 10, 250);
    rect(990, 450, 10, 250);
  }
}