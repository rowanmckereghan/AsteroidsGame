class Bullet extends Floater {
	private double cRadians;
	Bullet(Spaceship theShip)
	{
		corners = 5;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 2;
		yCorners[0] = -2;
		xCorners[1] = 6;
		yCorners[1] = -2;
		xCorners[2] = 8;
		yCorners[2] = 0;
		xCorners[3] = 6;
		yCorners[3] = 2;
		xCorners[4] = 2;
		yCorners[4] = 2;
		myColor = theShip.getColor();
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		cRadians = myPointDirection*(Math.PI/180);
		myDirectionX = (5 * Math.cos(cRadians)) + theShip.getDirectionX();
		myDirectionY = (5 * Math.cos(cRadians)) + theShip.getDirectionY();
	}
	public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
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
	public color getColor()
	{
		return myColor;
	} 
} 




