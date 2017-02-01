public void setup()
{
	size(800,800);
	background(0);
}
public void draw()
{
	shape1(200,300,200);
	shape1(600,300,200);
}

int b = (int)(Math.random()*255);
public void shape1(float x, float y, float siz)
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),b);
	ellipse(x,y,siz,siz);
	if(siz > 10)
	{
		shape1(x-siz/4,y,siz/1.5);
		shape1(x+siz/4,y,siz/1.5);
		shape1(x,y+siz/4,siz/2);
		shape1(x,y-siz/4,siz/2);

	}
}
