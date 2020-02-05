int blu, gre;

public void setup()
{
	size(500,500);
	background(255);
	blu = 255;
	gre = 0;
	myFractal(250,0,400);
}

public void myFractal(int x, int y, int siz)
{
	blu = blu - 10;
	gre = gre + 10;
	fill(0,gre,blu);
	noStroke();
	ellipse(x, y, siz, siz*2);
	fill(255);
	ellipse(x, y, siz/5, siz/5);

	if (siz >= 20)
	{
		myFractal(x, y+20, siz-20);
	}
}