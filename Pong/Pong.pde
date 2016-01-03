import controlP5.*;

ControlP5 cp5;

Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

void setup()
{
  size(1000, 1000);
  smooth();
  frameRate(30);
  cp5 = new ControlP5(this);
  
  cp5.addButton("Menu",0,0,0,80,19);
  cp5.addButton("Easy",0,250,0,80,19);
  cp5.addButton("Medium",0,500,0,80,19);
  cp5.addButton("Hard",0,750,0,80,19);
}

void draw()
{
  if(mode == "Menu");
  {
    background(0);
    
    fill(0, 255, 255);
    textAlign(CENTER, CENTER);
    textSize(25);
    text("PONG",500, 300);
    textSize(15);
    text("Instructions:",500, 400);
    textSize(12);
    text("Player 1: W for UP and S for DOWN",500, 500);
    text("Player 2: O for UP and L for DOWN",500, 515);
  }
  
  if(mode == "Easy");
  {
  }
  
  if(mode == "Medium");
  {
  }
  
  if(mode == "Hard");
  {
  }
}

public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}