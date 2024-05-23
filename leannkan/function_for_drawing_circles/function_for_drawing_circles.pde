float theta = 0;

void setup() {
  size(400, 400);


  color c1 = color(255, 289, 177); //color 1
  color c2 = color(129, 228, 255); // color 2
  
  for(int i = 0; i < 400; i++){
   color c3 = lerpColor(c1 , c2, float(i) / float(400)); //makes a gradient of the 2 colors. float 1/float 400 gives you a decimal, basically how much % of gradient do you want
   stroke(c3);
   
   line(400, i, 0, i);
   //horizontal
   //line(i, 0, i, 600); - vertical line gradient
  
  stroke(0);
  }

  //waves
  fill(33, 115, 36);
  drawWaves(100, 20, 100, 200);
  drawWaves(100, 16, 100, 200);
  drawWaves(100, 12, 100, 200);
  drawWaves(100, 8, 100, 200);
  drawWaves(100, 4, 100, 200);
  drawWaves(100, 0, 100, 200);
  drawWaves(100, -4, 100, 200);
  drawWaves(100, -8, 100, 200);
  drawWaves(100, -12, 100, 200);
  drawWaves(100, -16, 100, 200);
  drawWaves(100, -20, 100, 200);
  drawWaves(100, -24, 100, 200);

  fill(74, 135, 77);

  drawWaves(100, 400, 175, 100);
  drawWaves(100, 396, 175, 100);
  drawWaves(100, 392, 175, 100);
  drawWaves(100, 388, 175, 100);
  drawWaves(100, 384, 175, 100);
  drawWaves(100, 380, 175, 100);
  drawWaves(100, 376, 175, 100);
  drawWaves(100, 372, 175, 100);
  drawWaves(100, 368, 175, 100);
  drawWaves(100, 364, 175, 100);

  fill(134, 176, 136);
  drawWaves(100, 10, 200, 100);
  drawWaves(100, 6, 200, 100);
  drawWaves(100, 2, 200, 100);
  drawWaves(100, -2, 200, 100);
  drawWaves(100, -6, 200, 100);
  drawWaves(100, -10, 200, 100);
  drawWaves(100, -14, 200, 100);
  drawWaves(100, -18, 200, 100);
  drawWaves(100, -22, 200, 100);
  drawWaves(100, -26, 200, 100);
  drawWaves(100, -30, 200, 100);
  drawWaves(100, -34, 200, 100);
  drawWaves(100, -38, 200, 100);
  drawWaves(100, -42, 200, 100);


  //circles for the sun
  fill(189, 163, 140);
  circle(200, 200, 160);

  drawCircles(36, 200, 200, 80);

  fill(229, 101, 49); //dark red
  drawCircles(32, 200, 200, 70);
  drawCircles(30, 200, 200, 65);

  fill(229, 142, 49); //red
  drawCircles(28, 200, 200, 60);
  drawCircles(26, 200, 200, 55);

  fill(229, 166, 49); //dark orange
  drawCircles(24, 200, 200, 50);
  drawCircles(22, 200, 200, 45);

  fill(299, 190, 49); //
  drawCircles(20, 200, 200, 40);
  drawCircles(18, 200, 200, 35);

  fill(299, 208, 49); //
  drawCircles(16, 200, 200, 30);
  drawCircles(14, 200, 200, 25);

  fill(245, 239, 135); //
  drawCircles(14, 200, 200, 20);
  drawCircles(12, 200, 200, 15);

  fill(252, 250, 194); //
  drawCircles(10, 200, 200, 10);
  drawCircles(8, 200, 200, 5);

  fill(255, 255, 255); //
  circle(200, 200, 7);

  //circles

}

void draw() {
  fill(192, 228, 255);
}

void drawCircles(int numc, float xx, float yy, float r) {

  float degrees = 360 / numc;

  for (float i = 0; i < 360; i = i + degrees) {
    float x = sin(radians(i)) * r+xx;
    float y = cos(radians(i)) * r+yy;

    circle(x, y, 5);
  }
}

void drawWaves(int numc, float xx, float yy, float rr) {

  float degrees = 180 / numc;

  for (float i = 0; i < 180; i = i + degrees) {
    float x = tan(radians(i)) * rr+xx;
    float y = sin(radians(i)) * rr+yy;

    circle(x, y, 5);
  }
}
