int[]nums = {1, 2, 3, 3, 2, 1};
int[] array = new int[nums.length];


void setup(){
  for (int i = 0; i < nums.length; i++){
  array [i] = nums [nums.length-1-i];
  }
  println(array);
}

void draw(){
  
}
