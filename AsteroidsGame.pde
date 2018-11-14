Spaceship player = new Spaceship();
Asteroids gang[] = new Asteroids[10];
Star wars[] = new Star[650];
boolean w, s, a, d, checkCollide, startAndEnd;
int var1, var2;
PImage title;
public void setup() 
{
frameRate(60);
var1 = 180;
var2 = 120;
background(0);
size(800, 800);
startAndEnd = true;
title = loadImage("asteroids_2.jpg");
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
	if (startAndEnd == true)
	{
		background(0);
		image(title, -275, 0);
		var1 = var1 - 1;
		if (var1 <= 0)
		{
		background(0);
		textSize(50);
		text(player.lives + " lives left", 275, 400);
		var2 = var2 - 1;
		if (var2 <= 0)
		{
		startAndEnd = false;
	}
	}
	}
	else {
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
	if ((player.myCenterX + 16 >= gang[z].getA() && player.myCenterX + 16 <= gang[z].getC()) || (player.myCenterX - 8 >= gang[z].getA() && player.myCenterX - 8 <= gang[z].getC()))
		{
			checkCollide = true;
			var1 = 180;
			var2 = 120;
			break;
		}
	else if ((player.myCenterY + 5 >= gang[z].getB() && player.myCenterY + 5 <= gang[z].getD()) || (player.myCenterY - 5 >= gang[z].getB() && player.myCenterY - 5 <= gang[z].getD()))
		{
			checkCollide = true;
			var1 = 180;
			var2 = 120;
			break;
		}
	else {checkCollide = false;}
	}
	player.show();
	player.move();
	if (d == true) {player.turn(4);}
	if (a == true) {player.turn(-4);}
	if (w == true) {player.accelerate(0.1);}
	if (s == true) {player.accelerate(-0.1);}
	if (checkCollide == true)
	{
		player.lives = player.lives - 1;
		startAndEnd = true;
		player.setX(250);
		player.setY(250);
		player.setDirectionX(0);
		player.setDirectionY(0);
		player.setPointDirection(0);
	}
	fill(255);
	text(player.lives, 100, 100);
}
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


