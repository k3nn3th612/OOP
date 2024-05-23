void setup(){
  size(600, 600);
  color c1 = color(255, 227, 236);
  color c2 = color(227, 248, 255);
  
  for(int i = 0; i < 600; i++){
   color c3 = lerpColor(c1, c2, float(i) / float(600));
   stroke(c3);
   
   line(600, i, 0, i);
   //horizontal
   //line(i, 0, i, 600); - vertical line gradient
  
  }
  
  
}
