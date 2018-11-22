class flower{
  
  float r;
  int n_petals;
  float x;
  float y;
  int petalColor;
  int speedx = 3; 
  int speedy = 3;   
  
  flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalcolor){
    r = temp_r;
    n_petals = temp_n_petals;
    x = temp_x;
    y = temp_y;
    petalColor = temp_petalcolor;
}

void display () {
  float ballX;
  float ballY;
  noStroke();
    fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/5) {
  ballX= x + r*cos(i);
  ballY= y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);  ;
}

void move(){
 x+=speedx;
 y+=speedy;
}
  
void bounce() {
 if (x>width-(r*1.2) || x<0+r){
    speedx=speedx*-1;
  }
  if (y>height-(r*1.2) || y<0+r){
    speedy=speedy*-1;
}
 }
}
