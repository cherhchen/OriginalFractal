int blu, gre;
public void setup()
{
  size(800,800);
  background(77, 210, 247);
  blu = 255;
  gre = 0;
  myFractal(400,700,400);
  blu = 255;
  gre = 40;
  myFractal(100,700,400);
  blu = 255;
  gre = 50;
  myFractal(700,800,400);
  cloudFractal(0,200);
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

public void cloudFractal(int x, int y)
{
  fill(255,255,255,(int)(Math.random()*130)+10);
  ellipse(x, y, 120, 50);
  ellipse(x+20,y-20,70,30);
  ellipse(x-30,y+15,60,40);

  if (x <= 800)
  {
    cloudFractal(x+10, (int)(Math.random()*400));
  }
}
