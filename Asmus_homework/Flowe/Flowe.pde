flower myFlower1 = new flower(50,50,70,300,(#FCFC0D));;

void setup() {
  size(1000,700);
}

void draw(){
  background(#FF0000);
  
  myFlower1.display();
  myFlower1.move();
  myFlower1.bounce();
}  
 
