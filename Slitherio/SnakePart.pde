class SnakePart extends Thing implements Moveable{
  float partsize = 30; //spawn size set at 30
  SnakePart(float x, float y, int red, int green, int blue){
    super(x,y,red,green,blue);
  }
  void display(){
    fill(R,G,B);
    circle(this.x,this.y,partsize);
  }
  void move(){
  }
}
