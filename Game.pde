//accuracy counter
//map - spawn random white dots (stars in background)
//highscores

//allows audio to be played
import ddf.minim.*;

Minim m;
AudioPlayer song;

//first screen is case 1 in switch
int mode = 1;

//allows an image to be loaded in the sketch
PImage img;

//declaring global variables
ArrayList bullets = new ArrayList();
ArrayList enemies = new ArrayList(); 


Ship ship;
Enemy enemy;

void setup()
{
  //draws all geometry with smooth (anti-aliased) edges
  smooth();
  
  //sets the amount of frames per second to 60
  frameRate(60);
  size(1500, 900);
  
  //choosing the image to be loaded in
  img = loadImage("Asteroid Background.jpg");
  
  //resizing the image to fit size(1500, 900)
  img.resize(width, height);
  
  m = new Minim(this);
  
  //loads song from the data folder
  song = m.loadFile("Asteroids Music.mp3");
  
  //plays the song
  song.play();
  
  //no cursor while program is running
  noCursor();
}


void draw()
{
  //input is saved into mode
  switch(mode)
  {
    //if the User presses 1
    case 1:
    {
      //set the background to the image
      background(img);
      
      //colour of text
      fill(0,255,0);
      
      //size of text
      textSize(72);
      text("SPACE INVADERS", 450, 100);
      textSize(32);
      fill(255);
      text("Press 2 to Play!", 200, 500);
      text("Press 3 to see the Controls!", 900, 500);
      text("Press 4 to Quit!", 600, 700);
      
      
      //breaks out of current case
      break;
    }
    
    case 2:
    {
      background(img);
      textSize(16);
      text("Score= ", 10, 50);
      text("Ammo= ", 10, 70);
      
      //call functions
      Start();
      ship.display();
      Moveship();
      EnemyCont();
      
      
      break;
    }
    case 3:
    {
     background(img);
      textSize(72);
      fill(0, 255, 0);
      text("CONTROLS", 550, 100);
      textSize(32);
      fill(0, 255, 0);
      text("Press A to move to the left!", 400, 300);
      text("Press D to move to the right!", 400, 400);
      text("Press J to shoot!", 400, 500);
      fill(255, 0, 0);
      text("Press 1 to return to the Main Menu!", 400, 800);
      
      break;
    }
    case 4:
    {
      //exits the program
      exit();

      break;
    }
    //if the User presses a number that does not have a case
    default:
    {
      background(img);
      fill(255,0,0);
      textSize(32);
      text("Invalid Input!", 580, 480);
      text("Press 1 to return to the Main Menu!", 420, 540);
    }
  }
}

//sets the boolean variables to false
Boolean leftkey = false, rightkey = false;

//function
void Moveship()
{
  if (leftkey) 
  {
    ship.x -=8;
  }
  if (rightkey) 
  {
    ship.x +=8;
  }
}

//recognising User input from keyboard
void keyPressed()
{
  if(key >= '0' && key <= '9')
  {
    mode = key - '0';
  }//end if
  if (keyCode == LEFT) 
  {
    leftkey = true;
  }
  else 
  {
    if (keyCode == RIGHT) 
    {
      rightkey = true;
    }
  }
}

 
void keyReleased() 
{
  if (keyCode == LEFT) 
  {
    leftkey = false;
  }
  else 
  {
    if (keyCode == RIGHT) 
    {
      rightkey = false;
    }
  }
}//end keyPressed



void Start()
{
  //creating new instances
  ship = new Ship();
  enemies = new ArrayList(); 
  SpawnEnemies();
}


void SpawnEnemies() 
{
  //for loop
  for (int i = 0; i < 10; i++) 
  {
    float x = width * .1 + i % 10 * 50;
    float y = 60 + int(i / 10) * 60 ;
    enemies.add(new Enemy(x, y));
  }
}


//displays the enemies
void EnemyCont() 
{
  for (int i = 0; i < enemies.size(); i++) 
  {
    Enemy enemy = (Enemy) enemies.get(i);
    enemy.move();
    enemy.display();
  }
}
