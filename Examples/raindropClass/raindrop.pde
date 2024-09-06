class Raindrop {
  float x; //set up all variables you will need here
  float y;
  float cy;
  float w = 5;
  float h = 10;
  float g = 0.3;

  Raindrop() { //when creating a new raindrop, assign some random values
    x = random(0, width);
    y = random(-height, height);
    cy = 5;
  }

  void display() { //show the raindrop
    fill(255);
    rect(x, y, w, h);
  }

  void move() { //move the raindrop
    y = y + cy;
    cy = cy + 0.1;
    if (y > height) {
      y = -10;
      cy = 5;
      x = random(width);
    }
  }
}
