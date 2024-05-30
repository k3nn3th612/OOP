PImage img;
PImage sorted;
void setup() {
  size (800, 400);
  img=loadImage ("Pink_flower.jpg");
  sorted =createImage (img.width, img.height, RGB);
  sorted.loadPixels();
  for (int i=0; i< sorted.pixels.length; i++) {
    sorted.pixels [i]= color (random (255));
  sorted=img.get();
    sorted.loadPixels();
    
    for (int i=0; i< sorted.pixels.length; i++){
      for (int j=i; j< sorted.pixels.length; j++){
        
  
  sorted.updatePixels();
}
    }
