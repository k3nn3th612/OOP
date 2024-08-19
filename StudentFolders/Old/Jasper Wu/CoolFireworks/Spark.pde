class Spark {
  PVector pos;
  PVector vel;
  PVector gra = new PVector (0, 0.1);
  float s;
  color c;

  Spark(PVector p) {
    pos = p.copy();
    vel = new PVector(0, -random(3, 5));
    vel.rotate(random(0, TWO_PI));
    s = 10;
    c = color(random(0,255), random (200,255), random (200,300));
  }
  void update() {
    fill(c);
    pos.add(vel);
    vel.add (gra);
    circle (pos.x, pos.y, s);
  }
}
