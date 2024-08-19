int numCircles = 100;
float[] currentSizes;
float[] speeds;
color[] colors;

void setup() {
  size(400, 400);
  background(255);
  noFill();
  
  // arrays for sizes, speeds, and colors
  currentSizes = new float[numCircles];
  speeds = new float[numCircles];
  colors = new color[numCircles];
  
  // randomize speed, colors, size
  for (int i = 0; i < numCircles; i++) {
    currentSizes[i] = random(50, min(width, height) * 0.8);
    speeds[i] = random(0.5, 2); 
    colors[i] = color(random(255), random(255), random(255)); 
  }
}

void draw() {
  background(255);
  
  // 
  for (int i = 0; i < numCircles; i++) {
    currentSizes[i] += speeds[i];
    
    // if size reaches certain smth then switch direction
    if (currentSizes[i] >= min(width, height) * 0.8 || currentSizes[i] <= 50) {
      speeds[i] *= -1;
    }
    
    // current size and color
    float x = width / 2;
    float y = height / 2;
    stroke(colors[i]);
    ellipse(x, y, currentSizes[i], currentSizes[i]);
  }
}
