  // Define
Ball n1 = new Ball(50,50);


int num = 50;
int[] x = new int[num];
int[] y = new int[num];

int mouseClicked;

float EllipseX = 100;
float EllipseY = 100;
int ellipseR = 100;

void setup()
{
  size(750,600);
  frameRate(30);
}

void draw(){
  background(10);
  n1.update(); //Call ball to show on screen

  // The tracker
  fill(255);
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Follow mouse cursor
  x[0] = mouseX;
  y[0] = mouseY;
  // balls tailing mouse
  for (int i = 0; i < num; i++) {
    ellipse(x[i], y[i], i/2, i/2);
  }
  // Score
  fill(#0000FF);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(mouseClicked+"",0,0,width, height);
  fill(255,55,150);
}
  // Class
class Ball {
  float x, y;
  Ball (float x, float y) {
  
  }
  // Ball defined and update
  void update(){
    x += y;
    if (x > width) {
      x = 0;
    }
    ellipse(EllipseX,EllipseY,ellipseR,ellipseR);
  }
}
// The games core mechanic
void mousePressed(){
  if((mouseButton == LEFT) &&
  (mouseX<(EllipseX+ellipseR/2)) && 
  (mouseY>(EllipseY-ellipseR/2)) && 
  (mouseY<(EllipseY+ellipseR/2))) {
  mouseClicked++; EllipseX=random(0,750); 
  EllipseY=random(0,600);} 
  else { mouseClicked = 0;}
}
