void setup(){
  //fullScreen();
  size(800, 600);
}

void draw(){
  if(circleRect(mouseX, mouseY, 50, 100, 100, 100, 100)){
   background(255, 0, 0); 
  } else {
   background(50); 
  }
 
  rect(100, 100, 100, 100);
  circle(mouseX, mouseY, 100);
  
  
  
}
