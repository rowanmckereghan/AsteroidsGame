Spaceship player = new Spaceship();
ArrayList <Asteroids> gang = new ArrayList <Asteroids>();
ArrayList <Bullet> pop = new ArrayList <Bullet>();
Star wars[] = new Star[650];
boolean w, s, a, d, space, checkCollide, startAndEnd;
boolean gameOver = false;
int var1, var2;
int numberOfClicks = 0;
PImage title;
public void setup() 
{
frameRate(60);
var1 = 180;
var2 = 120;
int numberOfAsteroids = 20;
background(0);
size(800, 800);
startAndEnd = true;
title = loadImage("asteroids_2.jpg");
for (int i = 0; i < wars.length; i += 1)
{
	wars[i] = new Star();
}
for (int z = 0; z < numberOfAsteroids; z += 1)
{
	gang.add(new Asteroids((int)(Math.random()*500) + 150, ((int)Math.random()*500) + 150));
}
}
public void draw() 
{
	if (gameOver == true)
	{
		background(0);
		text("Game Over", 275, 400);
	}
	else if ((gameOver == false) && (gang.size() <= 0))
	{
		background(0);
		text("You Won!", 275, 400);
	}
	else if (startAndEnd == true && gameOver == false && gang.size() > 0)
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
	for (int z = 0; z < gang.size(); z += 1)
	{
	gang.get(z).show();
	gang.get(z).move();
	if ((dist((float)player.getX(), (float)player.getY(), (float)gang.get(z).getX(), (float)gang.get(z).getY())) <= 18) //dist((float)gang.get(z).getX(), (float)gang.get(z).getY(), (float)gang.get(z).getC(), (float)gang.get(z).getD()))
		{
			checkCollide = true;
			var1 = 180;
			var2 = 120;
			break;
		}
	/*else if ((dist((float)player.myCenterX, (float)player.myCenterY + 8, (float)gang.get(z).getX(), (float)gang.get(z).getY())) <= 5)
		{
			checkCollide = true;
			var1 = 180;
			var2 = 120;
			break;
		}*/
	else {checkCollide = false;}
}
	//bullet loops
	for(int o = 0; o < pop.size(); o++)
	{
		pop.get(o).show();
		pop.get(o).move();
		for (int p = 0; p < gang.size(); p += 1)
	{
	if ((dist((float)pop.get(o).getX(), (float)pop.get(o).getY(), (float)gang.get(p).getX(), (float)gang.get(p).getY())) <= 15) //dist((float)gang.get(z).getX(), (float)gang.get(z).getY(), (float)gang.get(z).getC(), (float)gang.get(z).getD()))
		{
			gang.remove(p);
			pop.remove(o);
			break;
		}
	}
}
	if (checkCollide == true)
	{
		player.lives = player.lives - 1;
		startAndEnd = true;
		player.setX((int)(Math.random()*400) + 200);
		player.setY((int)(Math.random()*400) + 200);
		player.setDirectionX(0);
		player.setDirectionY(0);
		player.setPointDirection(0);
		if (player.lives <= 0)
		{
			gameOver = true;
		}
	}
	player.show();
	player.move();
	if (d == true) {player.turn(4);}
	if (a == true) {player.turn(-4);}
	if (w == true) {player.accelerate(0.1);}
	if (s == true) {player.accelerate(-0.1);}
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
	if (key == 'r')
	{
		pop.add(new Bullet(player));
		numberOfClicks++;
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


