class Asteroids extends Floater
{
	private int rotateSpeed;
	public Asteroids(int x, int y)
	{
		 corners = (int)(Math.random()*4) + 5;
  		 xCorners = new int[corners];
  		 yCorners = new int[corners];
  		 for (int i = 0; i < xCorners.length; i+= 1)
  		 {
  		 	if (i == 0)
  		 	{
  		 		xCorners[i] = ((int)(Math.random()*20));
  		 		yCorners[i] = ((int)(Math.random()*20));
  		 	}
  		 	else if (i > 0 && i <= (xCorners.length/4))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*20));
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*20));
  		 	}
  		 	else if ((i > ((xCorners.length)/4)) && (i <= ((xCorners.length)/2)))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*-20));
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*20));
  		 	}
  		 	else if (i > ((xCorners.length)/2) &&(i <= (3*(xCorners.length)/4)))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*-20));
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*-20));
  		 	}
  		 	else if (i > (3*(xCorners.length)/4))
  		 	{
  		 	xCorners[i] = xCorners[i - 1] + ((int)(Math.random()*20));
  		 	yCorners[i] = yCorners[i - 1] + ((int)(Math.random()*-20));
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
    if(myCenterX > width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY > height)
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
public void show ()  //Draws the floater at the current position  
  {             
    noFill();   
    stroke(255);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 

