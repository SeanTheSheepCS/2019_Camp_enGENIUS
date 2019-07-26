int timer = 0;

void setup() {
  size(500, 500);
  
}


void draw()
{
 fill(0, 255, 240);  // color for sky
  rect(0,0, 500,500); // sky
  fill(41, 201, 84); // color for lawn
  quad(0, 500, 500, 500, 500, 200, 0 , 200); // lawn
  fill(250, 0, 0); // color for house
rect(175, 250, 120, 130); // house
fill(142, 65, 3); // color for roof
triangle( 150, 250, 315, 250, 230, 100); // roof
fill(); // color for tree leaves
ellipse(); // tree leaves
rect(30, 150, 15, 50); //tree
fill(152, 8, 0); // color for door
rect(210, 320, 50, 60); // door
fill(252, 241, 5); // color for doorknob
ellipse(220, 350, 10, 10); //doorknob
fill(4, 205, 252); // color for window 
rect(190, 265, 40, 35); // window
fill(252, 241, 5); //color for "button"
ellipse(45, 45, 75, 75); // "button"
  if(mousePressed && dist(mouseX, mouseY, 82, 82) < 75 )
  {
    textSize(60);
   
   fill(20, 181, 219);
   rect(60, 190, 352, 70);
    fill(252, 241, 5);
   text("FBI OPEN UP", 58, 250); 
   timer = 120;
  }
  if(timer > 0){
   textSize(60);
      fill(91, 7, 183);
       rect(60, 190, 352, 70);
        fill(252, 241, 5);
     text("FBI OPEN UP", 58, 250); 
   timer--;
  }
}
