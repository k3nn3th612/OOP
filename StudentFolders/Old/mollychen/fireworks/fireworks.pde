float gravity = 0.1;

int numberOfFireworks = 3;
ArrayList<Firework> fireworks = new ArrayList<Firework>();
float fireworkSize = 5;
float fireworkMinSize = 3;
float fireworkMaxSize = 10;
float fireworkDuration = 0.2;
int fireworkFrequency = 30;

int particleMinSize = 2;
int particleMaxSize = 5;
ArrayList<Particle> particles = new ArrayList<Particle>();
int particleLife = 100;
int numberOfParticles = 150;



void setup() {
  size(400, 400);
  for (int i = 0; i < numberOfFireworks; i++) {
    fireworks.add(new Firework(random(width), height));
  }
  background(0);
}

void draw() {
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);

  if (floor(random(fireworkFrequency)) == 0 && fireworks.size() + 1 <= numberOfFireworks) {
    fireworks.add(new Firework(random(width), height)); // Randomize x position
  }

  for (int i = fireworks.size() - 1; i >= 0; i--) {
    Firework firework = fireworks.get(i);
    firework.update();
    firework.display();
    firework.checkVel();
    if (firework.exploded) {
      firework.explode();
      fireworks.remove(i);
    }
  }

  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle particle = particles.get(i);
    particle.update();
    particle.display();
    particle.checkTime();
    if (particle.dead) {
      particles.remove(i);
 
    }
  }
}

class Firework {
  PVector pos, vel, initialVel;
  float size;
  float duration;
  boolean exploded;
  ArrayList<PVector> trail;

  Firework(float x, float y) {
    float vy = random(-10, -5); // random velocity for diff heights
    float vx = random(-2, 2);
    float xR = random(-10, 10);
    pos = new PVector(x + xR, y);
    vel = new PVector(vx, vy);
    initialVel = new PVector(vx, vy);
    size = random(fireworkMinSize, fireworkMaxSize);
    float dR = random(0, 0.2);
    duration = fireworkDuration + dR;
    trail = new ArrayList<PVector>();
    
  }

  void update() {
    pos.add(vel);
    vel.y += gravity;
    trail.add(new PVector(pos.x, pos.y)); 
  }

  void checkVel() {
    if (vel.y >= duration) {
      exploded = true;
    }
  }

  void explode() {
    for (int i = 0; i <= floor(random(numberOfParticles - 30, numberOfParticles)); i++) {
      particles.add(new Particle(pos.x, pos.y));
    
    }
  }

  void display() {
    float dn = map(vel.mag(), 0, initialVel.mag(), 20, 100);
    noStroke();
    fill(255, 255, 255, dn);
    ellipse(pos.x, pos.y, size, size);
    
    // Draw the trail
    for (int i = 0; i < trail.size(); i++) {
      float alpha = map(i, 0, trail.size(), 100, 0);
      fill(255, 255, 255, alpha);
      ellipse(trail.get(i).x, trail.get(i).y, size, size);
    }
  }
}

class Particle {
  PVector pos, vel;
  int timer, maxTime;
  float size;
  boolean dead;

  Particle(float x, float y) {
    float vy = random(-2, 2);
    float vx = random(-2, 2);
    pos = new PVector(x, y);
    vel = new PVector(vx, vy);
    timer = 0;
    maxTime = particleLife + int(random(1, 10));
    dead = false;
    size = random(particleMinSize, particleMaxSize);
  }

  void update() {
    pos.add(vel);
    vel.y += gravity * 0.3;
    vel.mult(0.98);
    timer += 1;
  }

  void checkTime() {
    if (timer >= maxTime) {
      dead = true;
    }
  }

  void display() {
    float dn = map(timer, 0, maxTime, 100, 0);
    noStroke();
    fill(255, 255, 255, dn);
    ellipse(pos.x, pos.y, size, size);
  }
}

class Twinkle {
  PVector pos;
  int timer, maxTime;
  float size;
  boolean dead;


  void update() {
    timer++;
  }

  void checkTime() {
    if (timer >= maxTime) {
      dead = true;
    }
  }

  void display() {
    fill(255);
    ellipse(pos.x, pos.y, size, size);
  }
}
