void setup() 
{
color Blue = color(0,236, 255); 
color Grass = color(0,255,0);
color Sun = color(255,255,0);
color Roof = color(50);
color gray = color(165,163,163);
color house = color(345,97,90);
size(800,500);
for(int i = 0; i < 50000; i++) 
{
  float x = random(0,800);
  float y = random(0,500);
  line(x,y,x,y+20);
}
//background(Blue);
fill(Grass);
rect(0,300,800,300);
fill(Sun);
ellipse(100,75,100,100);
fill(Roof);
triangle(400,100,600,175,200,175);
fill(gray);
rect(375,300,50,200);
fill(house);
rect(300,175,200,125);

}

void draw()
{

}
