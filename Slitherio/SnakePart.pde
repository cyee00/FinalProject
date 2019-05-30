class SnakePart extends Thing implements Moveable{
  float partsize = 30; //spawn size set at 30
  float diff;
  SnakePart(float x, float y, int red, int green, int blue, float difference){
    super(x,y,red,green,blue);
    diff=difference;
  }
  void display(){
    fill(R,G,B);
  }
  float getPartsize(){
    return partsize;
  }
  void move(){
    float targetx = mouseX;
    float currentx = targetx - x;
    x += currentx * diff;// - partsize;
    
    float targety = mouseY;
    float currenty = targety - y;
    y += currenty * diff;// - partsize;
    
    circle(x,y,partsize);
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
