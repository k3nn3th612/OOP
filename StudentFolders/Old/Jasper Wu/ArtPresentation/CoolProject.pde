class Web {
  float angle ;
  float offset;
  float speed;
  float d = 20;
  float x = width/3;
  float y = height/3;
  color c;
  color co;
  Web(float o, float s) {
    offset = o;
    speed = s;
  }
  void goSpin() {
    pushMatrix();
    translate (width/2, height/2);
    rotate(radians(10*PI+angle/3));
    for (float a = 0; a <360; a+=10) {
      rotate(radians(a));
     a -= 1;

      c = color(random(0, 255), random (0, 255), random (0, 255));
      co = color(random(0, 255), random (0, 255), random (0, 255));

      stroke(0);
      fill(c);
      line(x*sin(radians(angle)), 0, 0, 0);
      //if(angle < 360){
      //rotate(radians(a)*cos(radians(angle)));
      line(x*sin(radians(angle)), 0, 0, y-d/2);
      ellipse(x*sin(radians(angle)), 0, d/2, d/2);
      ellipse(0, y, d, d);
      circle(0,0,d);

      //}
    }
    angle+= 0.5;
    popMatrix();
  }
}
