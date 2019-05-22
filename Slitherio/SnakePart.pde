class SnakePart extends Thing implements Moveable{
  float partsize = 30; //spawn size set at 30
  SnakePart(float x, float y, int red, int green, int blue){
    super(x,y,red,green,blue);
  }
  void display(){
    fill(R,G,B);
    ellipse(this.x,this.y,partsize, partsize/2);
  }
  void move(){
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
