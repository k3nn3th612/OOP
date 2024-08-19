ArrayList<Web> circles = new ArrayList<Web>();

void setup() {
  fullScreen();
  //size(800, 600);
  //noStroke();


  for (int i = 0; i < 1; i++) {
    circles.add(new Web(50 + i * 20, 0.01 + i * 0.01));
  }
}

void draw() {
  background(50);

  for (Web circle : circles) {
    circle.goSpin();
  }
}
