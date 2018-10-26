class Star //note that this class does NOT extend Floater
{
  int x, y;
  float size;
  public Star()
  {
  	x = (int)(Math.random()*500);
  	y = (int)(Math.random()*500);
  	size = 1.5;
  }
  public void show()
  {
  	fill(255, 210);
  	noStroke();
  	ellipse(x, y, size, size);
  }
}
