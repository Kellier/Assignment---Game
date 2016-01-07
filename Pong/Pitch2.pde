class Pitch2 extends Pitch
{
  void barrier()
  {
    stroke(255);
    fill(255);
    rect(0, 0, w, h);
    rect(0, 690, w, h);
    rect(0, 0, 10, 150);
    rect(0, 550, 10, 150);
    rect(990, 0, 10, 150);
    rect(990, 550, 10, 150);
  }
}