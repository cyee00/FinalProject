class SnakePart extends Thing implements Moveable{
  float partsize = 30; //spawn size set at 30
  SnakePart(float x,float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    fill(R,G,B);
  }
  void move(){
  }
}
