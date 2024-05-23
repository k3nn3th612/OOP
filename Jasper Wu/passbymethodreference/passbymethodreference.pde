PVector p = new PVector(400, 400);
PVector p2 = new PVector(1, 0);

PVector result = new PVector();

int x = 400;
int cx = 1;
int res;



void setup(){
  size(800, 800);
  
}

void draw(){
  background(0);
  //circle(result.x, result.y, 50);
    
  result.x = p.x + p2.x;
    
  circle(result.x, 400, 50);
   
}
