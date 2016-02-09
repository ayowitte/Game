//creating a class
class Enemy 
{
  //declaring variables in field
  float x, y;
  
  Enemy(float x, float y) 
  {
    this.x = x;
    this.y = y;
  }
 
  void display() 
  {
    fill(255 ,0 ,0);
    //draws a circle
    ellipse(this.x, this.y, 30, 30);
  }
 
 //allows movement
  void move() 
  {
    if (this.x > width * 0.9) 
    {
      this.x = width * 0.9;
      this.y += 30;
    }
 
    if (this.x < width * 0.1) 
    {
      this.x = width * 0.1;
      this.y += 30;
    }
  }  
}
