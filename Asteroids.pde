class Asteroids extends Floater
{
	public Asteroids(int x, int y)
	{
		 corners = (Math.random()*7) + 5;
  		 xCorners = new int[corners];
  		 yCorners = new int[corners];
  		 for (int i = 0; i < xCorners.length; i+= 1)
  		 {
  		 	xCorners[i] = 1;
  		 }
  		 myColor = 0;
  		 myCenterX = x;
  		 myCenterY = y; 
  		 myDirectionX = 0;
  		 myDirectionY = 0;
  		 myPointDirection 0; 
	}
	public void setX(int x)
	{
		myCenterX = x;
	}
	public int getX()
	{
		return (int)myCenterX;
	}
	public void setY(int y)
	{
		myCenterY = y;
	}
	public int getY()
	{
		return (int)myCenterY;
	}
	public void setDirectionX(double x)
	{
		myDirectionX = x;
	}  
	public double getDirectionX()
	{
		return myDirectionX;
	}
	public void setDirectionY(double y)
	{
		myDirectionY = y;
	} 
	public double getDirectionY()
	{
		return myDirectionY;
	}
	public void setPointDirection(float degrees)
	{
		myPointDirection = degrees;
	}
	public double getPointDirection()
	{
		return myPointDirection;
	}
}
