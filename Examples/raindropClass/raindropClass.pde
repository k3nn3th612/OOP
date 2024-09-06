Raindrop[] drops = new Raindrop[1000];

void setup(){
  fullScreen();
  for(int i = 0; i < 1000; i++){
    drops[i] = new Raindrop();
  }
}

void draw(){
  noStroke();
 fill(0, 80, 240, 40);
 rect(0, 0, width, height);
 for(int i = 0; i < 1000; i++){
    drops[i].display();
    drops[i].move();
  }
}
