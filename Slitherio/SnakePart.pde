class SnakePart extends Thing{
  float partsize = 30; //spawn size set at 30
  float diff;
  SnakePart(float x, float y, int red, int green, int blue){//, float difference){
    super(x,y,red,green,blue);
    //diff=difference;
  }
  void display(){
    fill(R,G,B);
  }
  void test(){ // for testing purposes
    fill(255);
  }
  void dead(){
     if (x>width-partsize||x<partsize){
        test();
      } else if (y>height-partsize||y<partsize){
        test();
      } //else if (
    }
  void move(float[]coords){
    circle(coords[0],coords[1],partsize);
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
}
