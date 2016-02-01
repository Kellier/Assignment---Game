import controlP5.*;

ControlP5 cp5;

Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

ArrayList<Object> objects = new ArrayList<Object>();

Menu fig;
Pitch pitch;
Player1 pl1;
Player2 pl2;
Ball ball;
//Stars star;

void setup()
{
  size(1000, 700);
  
  fig = new Menu();
  pitch = new Pitch();
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
    
    pitch.position();
    pitch.thing();
    
    pl1.position();
    pl1.thing();
    
    pl2.position();
    pl2.thing();
    
    ball.position();
    ball.thing();
  }
  
  if (mode == "Medium" )
  {
    background(0);
    
    pitch.wall();
    
    pl1.position();
    pl1.thing();
    
    pl2.position();
    pl2.thing();
    
    ball.position();
    ball.thing();
    ball.barrier();
    
    //star.position();
    //star.thing();
  }
  
  if( mode == "Hard" )
  {
    background(35, 227, 23);
    
    pitch.position();
    pitch.thing();
    
    pl1.position();
    pl1.thing();
    
    pl2.position();
    pl2.thing();
    
    ball.position();
    ball.thing();
  }
}

public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}