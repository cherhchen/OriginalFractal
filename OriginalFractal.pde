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
  cloudFractal(50, 100, 200);
  cloudFractal(500, 100, 200);
  cloudFractal(250, 300, 200);
  cloudFractal(700, 300, 200);
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

public void cloudFractal(int x, int y, int rad)
{
  fill(255, 255, 255, 245);
   //fill(255,255,255,(int)(Math.random()*130)+10);
   ellipse(x, y, rad, rad);
   if (rad > 2) {
      cloudFractal(x+rad/2, y, rad/2);
      cloudFractal(x-rad/2, y, rad/2);
    }
}
