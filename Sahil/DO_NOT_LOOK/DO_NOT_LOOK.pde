float[] speed = new float[750];
float W = 10;
float H = 10;
float[] x = new float[750];
float[] y = new float[750];
float color1 = 10;
float color2 = 10;
float color3 = 10;
PImage error;
int x1 = 0;
int y1= 0;
float chance = 1;
int timer = 0;
void setup() 
{
  
   size(1484, 768);
   error = loadImage("error.jpg");
   for(int i = 0; i < 750; i++) 
   {

     speed[i] = random(1, 11);
    x[i] = random(0, 1484);
    y[i] = random(740, 768);
    
   }
}



void draw() 
{
  background(color1, color2, color3);
  for(int i = 0; i < 750; i++)
  {
    color1 = random(1, 255);
    color2 = random(1, 255);
    color3 = random(1, 255);
    W = random(10, 50);
    H = random(10, 50);
   
    fill(color1, color2, color3);
    y[i] = y[i] - speed[i];
    ellipse(x[i], y[i], W, H);
    if(y[i] < 0){
          x[i] = random(0, 768);
    y[i] = random(985, 1484);
    
    }
  }
   chance = random(1, 140);
   if(chance > 1 && chance < 2)
   {
     timer = 60;
   image(error, x1, y1, 1484, 768);
   }
   if (timer > 0){
     
        image(error, x1, y1, 1484, 768);
        timer --;
   }
     
}
