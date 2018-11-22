class sunnySon {
  int x;
  int y; 
  int r;
  
  void display(float x, float y, float r) {
    float a = (r/4)*(sqrt(2));
    rectMode(CENTER);
    ellipseMode(CENTER);
    fill(#FEFF03);
    ellipse(x,y,r/2,r/2);
    stroke(x,y,r*2,r*2);
    fill(#FF00FF);
    //rect(x,y,r,r);
    
    
    
  }
}
