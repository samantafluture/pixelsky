int posx;
int posy;
int number = 0;

/* @pjs preload="print-video#1.png"; */

void setup()
 
{
  size(1279,546);
  PImage myImage = loadImage("print-video#1.png");
  image(myImage, 0, 0);
  myImage.updatePixels();
}
 
void draw()
 
{
 
  loadPixels();
  color pixel = get(mouseX,mouseY);
  //pixels[i]= pixel;
  noStroke();
  fill(pixel);
 
  if(mousePressed == true) {
 
    posx=mouseX-(mouseX%100);
    posy=mouseY-(mouseY%100);
    rect(posx,posy,100,100);
  }
  
}


void keyPressed(){
  if(key == 's'){
    println("Saving...");
    String s = "screen" + nf(number,4) +"pixelcéu1.tiff";
    save(s);
    number++;
    println("Done saving.");
  }
}
