class Ship 
{
  float x, y;
  
  Ship() 
  {
    this.x = width / 4;
    this.y = height - 100;
  }
 
  void display() 
  {
    fill(255);
    rect(this.x, this.y, 30, 30);
  }
}

