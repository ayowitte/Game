//accuracy counter
//map - spawn random white dots (stars in background)
//highscores

//allows the use of ControlP5
import controlP5.*;
//allows audio to be played
import ddf.minim.*;

ControlP5 cp5;

Minim m;
AudioPlayer song;

int mode = 1;

PImage img;

void setup()
{
  smooth();
  frameRate(60);
  size(1500, 900);
  img = loadImage("Asteroid Background.jpg");
  img.resize(width, height);
  
  m = new Minim(this);
  //loads song from the data folder
  song = m.loadFile("Asteroids Music.mp3");
  song.play();
  noCursor();
}


void draw()
{
  switch(mode)
  {
    case 1:
    {
      background(img);
      fill(0,255,0);
      textSize(72);
      text("ASTEROIDS", 550, 100);
      textSize(32);
      fill(255);
      text("Press 2 to Play!", 200, 500);
      text("Press 3 to see the Controls!", 900, 500);
      text("Press 4 to Quit!", 600, 700);
      
      break;
    }
    
    case 2:
    {
      

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
      exit();

      break;
    }
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


void keyPressed()
{
  if(key>='0' && key<='9')
  {
    mode = key - '0';
  }//end if
  
}//end keyPressed
