class Spark {
  PVector pos;
  PVector vel;
  PVector gra = new PVector(0, 0.2);
  float s;
  color c;

  Spark(PVector p) {
    pos = p.copy();
    vel = new PVector(0, -random(1, 5));
    vel.rotate(random(0, TWO_PI));
    s = 10;
    c = color(random(360), random(200, 255), random(200, 255));
  }
  
   Spark(PVector p, float col) {
    pos = p.copy();
    vel = new PVector(0, -random(1, 5));
    vel.rotate(random(0, TWO_PI));
    s = 10;
    c = color(col, random(200, 255), random(200, 255));
  }

  void update() {
    fill(c);
    pos.add(vel);
    vel.add(gra);
    circle(pos.x, pos.y, s);
    s -= 0.1;
    if(s <= 0){
      s = 0;
    }
  }
}
