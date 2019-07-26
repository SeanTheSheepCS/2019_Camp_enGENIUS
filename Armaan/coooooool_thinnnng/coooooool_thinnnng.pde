PImage yeeet;
int x =250;
int y =200;
int framesleft =3600; 

int timer = 0;

PImage hi;
int x1 =250;
int y1 =200;

PImage sand;
int x2=250;
int y2 =200;

PImage  net;
float x3=250;
float y3 =200;

float[] x4 = new float [70];
float[] y4 = new float [70];
float[] speed =new float [70];
void setup()
{
  for(int i = 0; i <70; i++)
{
  x4[i] = random(0,1500);
  y4[i] = 750;
  speed[i] = random(5,10);
}
  size(1500, 700);
yeeet = loadImage("yeeet.png");
hi = loadImage("hi.png");
sand = loadImage("sand.jpg");
 net = loadImage("net.png");
 }

void draw()
{
  timer ++ ;
  if (timer == 150)
  {
x3 =1999999999;
y3 =1999999999;
  }  
  if (timer == 900)
  {
  x3 = random(0,1500);
  y3 = random(0,700);
  timer = 0;
  }
  
  if (framesleft < 0){
      fill(255,1,1);
  textSize(40);
  x = mouseX;
  y = mouseY;
 text("sponge wins, jellyfish sucks!",450,375);
 return;
  }
  background (60, 95, 232);
  if (keyCode == LEFT)
{
    x = x - 9;
} 

  if (keyCode == RIGHT)
  {
    x = x + 9;
  }


  if (keyCode == UP)
  {

    y = y - 9;
  }


  if (keyCode == DOWN)
  {
    y = y + 9;
  }

if (dist (x,y,mouseX,mouseY)<50)
{
  fill(255,1,1);
  textSize(40);
  x = mouseX;
  y = mouseY;
 text("you suck, LOOOOOOOOOOser!",450,375);
}

if (dist (x,y,x3,y3)<50)
{
text("10 seconds cooldowm for the jellyfish",450,410);
textSize(40);
}
if (x < 0)
  {
    x = 1499;
  }
  if (x > 1500)
  {
    x = 0;
  }
  if (y < 0)
  {
    y = 749;
  }
  if (y > 750)
  {
    y = 0;
  }
    for(int i = 0; i <70; i++)
{ 
  fill(#FFFDCB);
  ellipse(x4[i],y4[i],25,25);
  y4[i] = y4[i]-speed[i];
  if (y4[i] < 0)
  {
    y4[i] = 499;
  }
}
   fill(#E3A300);
image(sand, 0,620,1500,200);
image(yeeet, x, y, 100, 100);
  image(hi, mouseX, mouseY, 50, 50);
image(net,x3,y3,15,30);
framesleft -- ;

}
