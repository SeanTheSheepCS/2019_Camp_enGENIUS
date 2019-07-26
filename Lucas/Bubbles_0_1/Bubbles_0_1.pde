float []x = new float[1000];
float []y = new float[1000];
float [] speed = new float[1000];
float r = 0; 
float g = 0; 
float b = 0; 
float r1 = 0; 
float g2 = 0; 
float b3 = 0; 
PImage megalodon;
int megalodonx;
int megalodony;

void setup()
{

  size(1000, 1000);
  for (int i = 0; i < 1000; i++)
  {

    speed[i] = random(0, 10);
    x[i] = random(0, 1000);
    y[i] = 1000;
  }
  megalodon = loadImage("shark.png");
  megalodonx = 300;
  megalodony = 100;
}
void draw()
{
  background(r, g, b);
  for (int i  = 0; i <1000; i++)
  {
    r1 = random(0, 255);
    g2 = random(0, 255);
    b3 = random(0, 255);
    fill (r1, g2, b3);
    ellipse(x[i], y[i], 50, 50);
    y[i]= y [i]-speed [i];
    if (y [i] < 0)
    {
      y [i] = 1500;
    }
    if(dist(x[i],y[i],megalodonx,megalodony) <50)
    {
      fill(0);
      text("POP!",x[i],y[i]);
      y[i] = 700;
    }
  }
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  if (key == 'a')
  {
    megalodonx --;
  }
  if (key == 's')
  {
    megalodony ++;
  }
  if (key == 'w')
  { 
    megalodony --;
  }
  if (key == 'd')
  {
    megalodonx ++;
  }
  image(megalodon, megalodonx, megalodony, 100, 100);
}
