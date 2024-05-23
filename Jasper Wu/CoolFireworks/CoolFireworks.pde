FW f;
Spark s;
ArrayList<FW> shells  =new ArrayList <FW> ();
void setup() {
  //size (800, 600);
  fullScreen();
  f = new FW(random(100, width), 50, 10 );
  s = new Spark(new PVector(-100, -100));
  noStroke();
}

void draw() {
  //background (50);
  fill(60, 50);
  rect (0, 0, width, height);
  f.update();
  for (FW s : shells) {
    s.update();
  }
}
void mousePressed() {
}
void keyPressed() {


  //for (int i = 0; i < 45; i++) {
    shells.add(new FW(random(100, width), 50, 10 ));
   // f.fired = true;
//}
}
