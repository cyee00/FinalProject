class SnakePart extends Thing implements Moveable{
  float partsize = 30; //spawn size set at 30
  float diff;
  SnakePart(float x, float y, int red, int green, int blue, float difference){
    super(x,y,red,green,blue);
    diff=difference;
  }
  void display(){
    fill(R,G,B);
    circle(x,y,partsize);
  }
  void move(){
    float targetx = mouseX;
    float currentx = targetx - x;
    x += currentx * diff;
    
    float targety = mouseY;
    float currenty = targety - y;
    y += currenty * diff;
    
    circle(x,y,partsize);
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
