import controlP5.*;

ControlP5 cp5;

Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

ArrayList<Object> objects = new ArrayList<Object>();
ArrayList<Pitch> pitchs = new ArrayList<Pitch>();
ArrayList<Star> stars = new ArrayList<Star>();

boolean[] keys = new boolean[512];

Menu fig;

void setup()
{
  size(1000, 700);
  
  fig = new Menu();
  
  Player1 ply1 = new Player1('W', 'S', 30, 290, color(227, 11, 11));
  objects.add(ply1);
  
  Player2 ply2 = new Player2('O', 'L', 960, 290, color(7, 29, 103));
  objects.add(ply2);
  
  Pitch pitch = new Pitch();
  pitchs.add(pitch);
  
  for(int i = 0; i < 40; i ++)
  {
    Star star = new Star(
        random(0, width)
        , random(0, height)
        , random(10, 50)
        , color(random(100, 255), random(100, 255), random(100, 255))
        , (int) random(5, 10)
        );
    stars.add(star);
  }
  
  smooth();
  frameRate(30);
  cp5 = new ControlP5(this);
  
  cp5.addButton("Menu",0,0,0,80,19);
  cp5.addButton("Easy",0,250,0,80,19);
  cp5.addButton("Medium",0,500,0,80,19);
  cp5.addButton("Hard",0,750,0,80,19);
}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
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
    
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
    
    for(Pitch pitch: pitchs)
    {
      pitch.position();
      pitch.thing();
    }
  }
  
  if (mode == "Medium" )
  {
    background(0);
    
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
    
    for(Star star: stars)
    {
      star.position();
      star.thing();
    }
  }
  
  if( mode == "Hard" )
  {
    background(35, 227, 23);
    
  }
}

public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}