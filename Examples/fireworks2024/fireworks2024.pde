//FW f;
ArrayList<FW> shells = new ArrayList<FW>();

void setup() {
  fullScreen();
  //size(1200, 800);
  //f = new FW(random(100, width-100), 12 + random(4));
  background(60);
  noStroke();
  colorMode(HSB);
}

void draw() {
  //background(50)
  fill(60, 50);
  rect(0, 0, width, height);
  for (FW f : shells) {
    f.update();
  }
}

void mousePressed() {
}
void keyPressed() {
  shells.add(new FW(random(100, width-100), 15));
  shells.get(shells.size()-1).fire();
  //f.fire();
}
