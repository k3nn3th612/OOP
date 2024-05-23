class FW {
  PVector pos;
  PVector vel;
  PVector gra = new PVector (0, 0.1);
  float s;
boolean sploded = false;
  boolean fired = false;
  ArrayList<Spark> sparks  =new ArrayList <Spark> ();

  FW(float x, float y, float sp) {
    pos = new PVector (x, height-50);
    vel = new PVector (0, -sp);
    s = 20;
    fired = true;
  }

  
  void update() {
    if (fired && !sploded) {
      fill(255);
      pos.add(vel);
      vel.add (gra);
      circle (pos.x, pos.y, s);
    }
    if (vel.y > 0 && !sploded){
      explode();
    }
    if (sploded){
    for (Spark s : sparks) {
    s.update();
    }
  }
  }
  
  void explode(){
  if(!sploded){
    float startcolor = random (360);
    for (int i = 0; i < 45; i++) {
    sparks.add(new Spark(pos));
  }
  sploded = true;
  }
  }
}
