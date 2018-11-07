Spaceship player = new Spaceship();
Asteroids gang[] = new Asteroids[10];
Star wars[] = new Star[650];
boolean w, s, a, d;
public void setup() 
{
size(800, 800);
for (int i = 0; i < wars.length; i += 1)
{
	wars[i] = new Star();
}
for (int z = 0; z < gang.length; z += 1)
{
	gang[z] = new Asteroids((int)(Math.random()*500) + 150, ((int)Math.random()*500) + 150);
}
}
public void draw() 
{
	background(0);
	for (int i = 0; i < wars.length; i += 1)
	{
		wars[i].show();
	}
	strokeWeight(1);
	for (int z = 0; z < gang.length; z += 1)
	{
	gang[z].show();
	gang[z].move();
	}
	player.show();
	player.move();
	if (d == true) {player.turn(4);}
	if (a == true) {player.turn(-4);}
	if (w == true) {player.accelerate(0.25);}
	if (s == true) {player.accelerate(-0.25);}
}
public void keyPressed()
{
	if (key == 'd')
	{
		d = true;
	}
	if (key == 'a')
	{
		a = true;
	}
	if (key == 'w')
	{
		w = true;
		player.rockets = true;
	}
	if (key == 's')
	{
		s = true;
	}
	if (key == 'f')
	{
		player.setX((int)(Math.random()*480)+20);
		player.setY((int)(Math.random()*480)+20);
		player.setDirectionX(0);
		player.setDirectionY(0);
		player.setPointDirection((float)(Math.random()*(3000)));
	}
}

public void keyReleased()
{
	if (key == 'd')
	{
		d = false;
	}
	if (key == 'a')
	{
		a = false;
	}
	if (key == 'w')
	{
		w = false;
		player.rockets = false;
	}
	if (key == 's')
	{
		s = false;
	}
}

