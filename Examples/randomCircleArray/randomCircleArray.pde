float[] ds = new float[10]; //make a new array of floats (10 numbers)

void setup() {
  size(550, 200);
  for (int i = 0; i < ds.length; i++) {
    ds[i] = random(10, 100);
  }
}

void draw() {
  background(60);
  fill(255, 200);
  for (int i = 0; i < ds.length; i++) {
    circle((i+1)*50, 100, ds[i]);
  }
  
}
