float[] x = new float [100];
float[] y = new float [100];
float[] speed = new float[100];
void setup()
{
  size(500, 500);
  for (int i = 0; i < 100; i++)
  {

    x[i] = random(0, 500);
    y[i] = 500;
    speed[i] = random(1, 10);
  }
}





void draw()
{
  background(0, 244, 255);
  for (int i = 0; i < 100; i++)
  {
    y[i]= y[i] - speed[i];
    ellipse(x[i], y[i], 20, 20);  
    if (y[i] < -10)
    {
      y[i] = 500;
    }
  }
}  
