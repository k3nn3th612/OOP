class Star {
  float x;
  float y;
  float z;

  Star() {
    x= random(0, width);
    y= random(0, height);
    z= width;
  }

void update() {
}

void show() {
  fill(255);
  noStroke();
  
  float sx = map(x/z, 0, 1, 0, width);
  float sy = map(x/z, 0, 1, 0, height);
  
  ellipse(x, y, 8, 8);
}
}
