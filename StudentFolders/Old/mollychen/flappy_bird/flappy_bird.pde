int birdY;
int pipeX;
int score;
int birdSpeed;
int pipeGap;

void setup() {
  size(400, 600);
}

void draw() {
  background(0);
  

  fill(255, 255, 0);
  ellipse(50, birdY, 40, 30);


  fill(0, 255, 0);
  rect(pipeX, 0, 50, pipeGap);
  rect(pipeX, pipeGap + 150, 50, height - pipeGap - 150);


  pipeX -= 2;
  if (pipeX < -50) {
    pipeX = width;
    pipeGap = (int)random(200, height - 200);
    score++; 
  }


  fill(255);
  textSize(24);
  text("Score: " + score, 10, 30);
  
  
  birdY += birdSpeed;
  birdSpeed += 1;
}

void keyPressed() {
  if (key == ' ') {
    birdSpeed = -10;
  }
}
