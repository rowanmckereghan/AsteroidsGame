Spaceship player = new Spaceship();
public void setup() 
{
size(512, 512);
background(0);
}
public void draw() 
{
	player.show();
}
public void keyPressed()
{
	if (key == 'a')
	{
		turn(0.1);
	}
	else if (key == 'd')
	{
		turn(-0.1);
	}
	if (key == 'w')
	{
		accelerate(0.3);
	}
	if (key == 's')
	{
		accelerate(-0.3);
	}
	if (key == 'f')
	{
		
	}
}
