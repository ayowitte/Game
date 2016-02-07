//accuracy counter
//map - spawn random white dots (stars in background)

void setup()
{
  smooth();
  size(1600, 1000);
  //Ship ship = new Ship;
}

void randomdots()
{
  
  float sizeXY = random(10,10);
  float axisX = random(1550);
  float axisY = random(950);
  
  background (0);
  fill(255);
  ellipse(axisX,axisY,sizeXY,sizeXY);
}

void draw()
{
  randomdots();
}
