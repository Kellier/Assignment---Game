import controlP5.*;

ControlP5 cp5;

Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

PImage img1;

ArrayList<Object> objects = new ArrayList<Object>();
ArrayList<Pitch> pitchs = new ArrayList<Pitch>();
ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Ball> ball1 = new ArrayList<Ball>();

boolean[] keys = new boolean[512];


void setup()
{
  size(1000, 700);
  
  img1 = loadImage("Menu.jpg");
    
  Player1 ply1 = new Player1('W', 'S', 30, 290, color(227, 11, 11));
  objects.add(ply1);
  
  Player2 ply2 = new Player2('O', 'L', 970, 290, color(7, 29, 103));
  objects.add(ply2);
  
  Ball ball = new Ball('R', random(100, 900), random(0, height), color(255));
  objects.add(ball);
  
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
  
  for(int j = 0; j < 3; j++)
  {
    Ball balls = new Ball('R', random(100, 900), random(0, height), color(255));
    ball1.add(balls);
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
    background(img1);
    
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
    
    for(Pitch pitch: pitchs)
    {
      pitch.wall(490, 260, color(255));
    }
    
    for(Star star: stars)
    {
      star.position();
      star.thing();
    }
  }
  
  if( mode == "Hard" )
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
       
    for(Ball balls: ball1)
    {
      balls.position();
      balls.thing();
    }
    
  }
}

public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}