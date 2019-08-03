void setup()
{
 size(500,500); 
}

void draw()
{
if(mousePressed)
{
  makeShape(mouseX,mouseY);  
}
}
void makeShape(int x, int y)
{
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(x,y,50,50);
}
