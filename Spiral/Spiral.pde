  // define 
  float spiral = 0;
  float theta = 0;
  float noiseScale = noise(spiral)*10;
  int ellipseSize = 30;
  
void setup(){
  size(750,600);
  background(0);
}

void draw() {
   noStroke();
   // the spiral 
  for(int i = 0; i < 1; i++){
    float x = spiral *cos(theta);
    float y = spiral *sin(theta);
    // the differant colors 
    fill(random(255),0,random(255),noise(spiral)*255);
    ellipse(width/2+x,height/2+y,noise(spiral)*ellipseSize, noise(spiral)*ellipseSize);
    // distance between each ellipse
    spiral += 0.5;
    theta += 0.1;
  }
 // noLoop();
}
