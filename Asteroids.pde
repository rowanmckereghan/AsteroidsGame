class Asteroids extends Floater
{
	private int rotateSpeed;
	public Asteroids(int x, int y)
	{
		 corners = (int)(Math.random()*20) + 10;
  		 xCorners = new int[corners];
  		 yCorners = new int[corners];
  		 xCorners[0] = ((int)(Math.random()*2)) - 1;
  		 yCorners[0] = ((int)(Math.random()*4)) + 2;
  		 for (int i = 1; i < xCorners.length; i+= 1)
  		 {
  		 	if (i < (xCorners.length/4))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*10) + 7);
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*10) + 7);
  		 	}
  		 	if ((i > ((xCorners.length)/4))&&(i < (1(xCorners.length)/2)))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*10) - 17);
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*10) + 7);
  		 	}
  		 	if (i > ((xCorners.length)/2) &&(i < (3(xCorners.length)/4)))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*10) - 17);
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*10) - 17);
  		 	}
  		 	if (i > (3(xCorners.length)/4))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*10) + 7);
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*10) - 17);
  		 	}
  		 }
  		 myColor = color(255, 0, 0);
  		 myCenterX = x;
  		 myCenterY = y; 
  		 myDirectionX = (Math.random()*5) - 2;
  		 myDirectionY = (Math.random()*5) - 2;
  		 myPointDirection = 0;
  		 rotateSpeed = ((int)(Math.random()*5)) - 2;
	}
	public void move() 
    {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;    
    turn(rotateSpeed); 

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
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
