public void setup(){
  size(500,500);
  background(0,0,30);
}
public void draw(){
  sierpinski(250, 500, 350);
  sierpinski(-95, 500, 350);
  sierpinski2(27, 30, 450);
  fill(255, 255, 255);
}

public void sierpinski(int x, int y, int len){
  if(len <= 20){
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

public void sierpinski2(int x, int y, int len){
  if(len <= 20){
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski2(x, y, len/2);
    sierpinski2(x+len/2, y, len/2);
    sierpinski2(x+len/4, y+len/2, len/2);
  }
}

public void mouseMoved(){
  fill((float)Math.random()*1000, (float)Math.random()*1000, (float)Math.random()*1000);
}
