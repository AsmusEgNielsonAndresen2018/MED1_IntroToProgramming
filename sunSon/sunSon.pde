int num = 30;
int[] x = new int[num];
int[] y = new int[num];
int indexPos = 0;


sunnySon[] ball = new sunnySon[num];

void setup() { 
  background(255);
  size(700, 700);
  noStroke();
  for(int i = 0; i<num; i++){
    ball[i] = new sunnySon();
  }
}

void draw() {
  background(255);
  x[indexPos] = mouseX;
  y[indexPos] = mouseY;

  indexPos +=1;
  if (indexPos == num) {
    indexPos = 0;
  }

  for (int i = 0; i < num; i++) {
    int pos = (indexPos+i) % num;
    float r = 3*num-i;
    ball[i].display(x[pos], y[pos], r);
  }

  
}
