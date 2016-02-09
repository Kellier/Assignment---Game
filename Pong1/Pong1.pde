//Increment control P5 for the menu
import controlP5.*;

ControlP5 cp5;

//Button variable
Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

//Background image for the menu
PImage img1;

//Various array lists to incrmemnt different methods in classes for the draw method
ArrayList<Object> objects = new ArrayList<Object>();
ArrayList<Pitch> pitchs = new ArrayList<Pitch>();
ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Ball> ball1 = new ArrayList<Ball>();

//Increment all keys for control use
boolean[] keys = new boolean[512];


void setup()
{
  size(1000, 700);
  
  //Load image
  img1 = loadImage("Menu2.jpg");
    
  //Set variables for the Player 21 paddle including positions, variables for movement and color
  Player ply = new Player(970, 290, color(7, 29, 103));
  objects.add(ply);
  
  //Set variables for the ball including positions and color
  Ball ball = new Ball('R','N', random(100, 900), random(0, height), color(255));
  objects.add(ball);
  
  //Load pitch methods from the pitch array list
  Pitch pitch = new Pitch();
  pitchs.add(pitch);
  
  //Set variables for the Stars in the medium and hard screen
  //For loop sets the amount of stars on the screen
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
  
  //Set the variables for the balls
  //For loop sets the number of balls for the hard level/screen
  for(int j = 0; j < 3; j++)
  {
    Ball balls = new Ball('R', 'N', random(100, 900), random(0, height), color(255));
    ball1.add(balls);
  }
  
  //Create the buttons for the menu
  smooth();
  frameRate(30);
  cp5 = new ControlP5(this);
  
  //Name and set the buttons
  cp5.addButton("Menu",0,0,0,80,19);
  cp5.addButton("Easy",0,250,0,80,19);
  cp5.addButton("Medium",0,500,0,80,19);
  cp5.addButton("Hard",0,750,0,80,19);
}

//Method to move the paddles if pressed the paddle will move
void keyPressed()
{
  keys[keyCode] = true;
}

//Method to move the paddles if released the paddle will stop
void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{
  //What happens in the Menu when button is pressed
  if( mode == "Menu" )
  {
    background(img1);
    
  }
  
  //What happens in the Easy Level when button is pressed
  if( mode == "Easy" )
  {
    background(35, 227, 23);
    
    //Load data from the arrray list to increment the abstract methods
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
    
    //Load data from the pitch array list to set the screens
    for(Pitch pitch: pitchs)
    {
      pitch.position();
      pitch.thing();
    }
    
    //Call the Gamelives method
    GameLives();

  }
  
  //What happens in the Medium Level when button is pressed
  if (mode == "Medium" )
  {
    background(0);
    
    //Load data from the arrray list to increment the abstract methods
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
      go.wall();
    }
    
    //Load data from the Stars array
    for(Star star: stars)
    {
      star.position();
      star.thing();
    }
    
    //Load data from the pitch array list to set the screens
    for(Pitch pitch: pitchs)
    {
      pitch.wall();
    }
    
    //Call GameLives method
    GameLives();
    
  }
  
  //What happens in the Hard Level when button is pressed
  if( mode == "Hard" )
  {
    background(0);
    
    //Load data from the arrray list to increment the abstract methods
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
    
    //Load data from the Stars array
    for(Star star: stars)
    {
      star.position();
      star.thing();
    }
    
    //Load data from Ball array list for multiple balls   
    for(Ball balls: ball1)
    {
      balls.position();
      balls.thing();
    }
    
    //Call GameLives method
    GameLives();

  }
}

//Game lives method uses polymorphism to indicate what happens when either player loses all their lives
void GameLives()
{
  //Load all data from objects array list
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    //Name the global variable
    Object go = objects.get(i);
    if(go instanceof Ball)
    {      
      //If statement to indicate what happens when player 1 loses all their lives
      if(go.p_lives == 0)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(227, 11, 11);
        text("Computer Wins, You Lose Chap!!", width / 2, height / 2);
        text("Press N to restart", width / 2, 400);
      }
    }
      
  }
}

//Method to make sure control P5 works
public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}