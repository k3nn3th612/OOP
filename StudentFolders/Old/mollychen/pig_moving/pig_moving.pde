float pigX; 

void setup() {
  size(400, 400);
  background(255);
  pigX = -200; // Start pig off-screen to the left
}

void draw() {
  background(255); 
  

  pigX += 1; // Move pig to the right
  
  // body
  fill(255, 182, 193); 
  ellipse(pigX + 200, 300, 150, 100);
  
  // head
  fill(255, 182, 193); 
  ellipse(pigX + 150, 250, 100, 80);
  
  // nose
  fill(0);
  ellipse(pigX + 170, 250, 20, 20);
  
  // eyes
  fill(0);
  ellipse(pigX + 140, 230, 10, 10);
  ellipse(pigX + 160, 230, 10, 10);
  
  // ears
  fill(255, 182, 193);
  ellipse(pigX + 110, 210, 30, 40);
  ellipse(pigX + 190, 210, 30, 40);
  
  //legs
  fill(255, 182, 193); 
  rect(pigX + 110, 320, 20, 60);
  rect(pigX + 170, 320, 20, 60);

  if (pigX > width) {
    pigX = -200; // Reset pig position to the left side
  }
}
