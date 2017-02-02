
public void setup()
{
	size(800,800);
	background(0);
}
public void draw()
{
	shape1(200,300,200);
	shape1(600,300,200);
	
			shape2(400,600,100,0,180);
	for(int i = 60; i < 800; i+=60)
	{
		for(int j = 60; j < 800; j+=60)
		{
			shape2(i,j,100,0,180);
		}
	}
}


public void shape1(float x, float y, float siz)
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	ellipse(x,y,siz,siz);
	if(siz > 10)
	{
		shape1(x-siz/4,y,siz/1.5);
		shape1(x+siz/4,y,siz/1.5);
		shape1(x,y+siz/4,siz/2);
		shape1(x,y-siz/4,siz/2);
	}
}


public void shape2(float x, float y, float siz1, float start, float stop)
{
	noFill();
	stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	arc(x,y,siz1,siz1,start,stop);
	if(siz1 > 10)
	{
		shape2(x-siz1/4,y,siz1/1.5,0,180);
	}
}