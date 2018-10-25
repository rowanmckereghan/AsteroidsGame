Spaceship player = new Spaceship();
public void setup() 
{
size(512, 512);
}
public void draw() 
{
	background(0);
	player.show();
	player.move();
}
public void keyPressed()
{
	if (key == 'd')
	{
		player.turn(5);
	}
	if (key == 'a')
	{
		player.turn(-5);
	}
	if (key == 'w')
	{
		player.accelerate(0.3);
	}
	if (key == 's')
	{
		player.accelerate(-0.3);
	}
	/*if (key == 'f')
	{
		player.setX(250);
		player.setY(250);
		player.setDirectionX(0);
		player.setDirectionY(0);
		player.setPointDirection((int)Math.random()*(5));
	}*/
}
