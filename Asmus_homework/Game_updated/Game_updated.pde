Ball n1 = new Ball(50,50);
Ball n2 = new Ball(50,50);

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
  background(204);
  n1.update();
  n2.update();
  
  fill(#0000FF);
  textAlign(CENTER,CENTER);
  textSize(32);
  text(mouseClicked+"",0,0,width, height);
  fill(255,55,150);
}

class Ball {
  float x, y;
  Ball (float x, float y) {
  
  }
  void update(){
    x += y;
    if (x > width) {
      x = 0;
    }
    ellipse(EllipseX,EllipseY,ellipseR,ellipseR);
  }
}

void mousePressed(){
  if((mouseButton == LEFT) &&
  (mouseX<(EllipseX+ellipseR/2)) && 
  (mouseY>(EllipseY-ellipseR/2)) && 
  (mouseY<(EllipseY+ellipseR/2))) {
  mouseClicked++; EllipseX=random(0,750); 
  EllipseY=random(0,600);} 
  else { mouseClicked = 0;}
}
