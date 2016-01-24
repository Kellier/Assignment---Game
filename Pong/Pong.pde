import controlP5.*;

ControlP5 cp5;

Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

Menu fig;
Pitch pitch;
Pitch2 pitch2;
Pitch3 pitch3;
Player1 pl1;
Player2 pl2;
Ball ball;

void setup()
{
  size(1000, 700);
  
  fig = new Menu();
  pitch = new Pitch();
  pitch2 = new Pitch2();
  pitch3 = new Pitch3();
  pl1 = new Player1();
  pl2 = new Player2();
  ball = new Ball();
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
  if( mode == "Menu" )
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
    
    fig.Figure1();
    fig.Figure2();
    
  }
  
  if( mode == "Easy" )
  {
    background(35, 227, 23);
    
    pitch.barrier();
    pitch.lines();
    
    pl1.move();
    pl1.Ply1();
    
    pl2.move();
    pl2.Ply2();
    
    ball.bounce();
    ball.bll();
  }
  
  if (mode == "Medium" )
  {
    background(35, 227, 23);
    
    pitch2.barrier();
    pitch2.lines();
    pitch2.wall();
    
    pl1.move();
    pl1.Ply1();
    
    pl2.move();
    pl2.Ply2();
  }
  
  if( mode == "Hard" )
  {
    background(35, 227, 23);
    
    pitch3.barrier();
    pitch3.lines();
    pitch3.wall();
    pitch3.movewall();
    
    pl1.move();
    pl1.Ply1();
    
    pl2.move();
    pl2.Ply2();
  }
}

public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}