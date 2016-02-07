//accuracy counter
//map - spawn random white dots (stars in background)

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
      text("Asteroids!", 550, 100);
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
      text("Invalid Input!", 600, 600);
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
