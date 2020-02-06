int blu, gre;

public void setup()
{
	size(800,800);
	background(0);
	blu = 255;
	gre = 0;
	myFractal(400,700,400);
	blu = 255;
	gre = 40;
	myFractal(100,700,400);
	blu = 255;
	gre = 50;
	myFractal(700,800,400);
}

public void myFractal(int x, int y, int siz)
{
	blu = blu - 20;
	gre = gre + 20;
	fill(0,gre,blu);
	noStroke();
	ellipse(x, y, siz, siz);

	if (siz >= 40)
	{
		myFractal(x, y-35, siz-40);
	}
}

public void cloudFractal(int x, int y, int num)
{
	fill(255);
	ellipse(x, y, 30, 20);
	ellipse(x+20,y-10,40,10);
	ellipse(x,y+15,30,20);

	if (num >= 20)
	{
		cloudFractal(x+50, y, num/2);
	}
}