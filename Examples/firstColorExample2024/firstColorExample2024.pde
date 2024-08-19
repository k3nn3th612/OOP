void setup(){
  size(800, 600);
  background(0,0,0);
}

void draw(){
  stroke(255, 0, 0);
  fill(#4DE0BA);
  circle(300, 300, 75);
  noStroke();
  fill(255, 0, 0);
  circle(100, 100, 100);
  stroke(255);
  fill(255, 0, 255);
  noFill();
  circle(200, 200, 50);
  
  println(mouseX + " " + mouseY);

}
