float amt = 0;

void setup(){
  fullScreen();
}

void draw(){
  background(50);
  translate(width/2,height/2);
  rotate(amt);
  circle(200, 0, 50);
  amt += 0.02;
  rot = easeOutBounce
}

float easeOutBounce(float t, float b, float c, float d) {
  if ((t/=d) < (1/2.75)) {
    return c*(7.5625*t*t) + b;
  } else if (t < (2/2.75)) {
    return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
  } else if (t < (2.5/2.75)) {
    return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
  } else {
    return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
  }
}
