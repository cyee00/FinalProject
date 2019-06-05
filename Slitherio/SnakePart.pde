class SnakePart extends Thing{
  float partsize = 30; //spawn size set at 30
  float diff;
  SnakePart(float x, float y, int red, int green, int blue){
    super(x,y,red,green,blue);
  }
  
  void display(){
    fill(R,G,B);//set colors acc to parent snake
  }
  
  void test(){ // for testing purposes
    fill(255);
  }
  
  boolean dead(){
    return (x>width-partsize||x<partsize)||(y>height-partsize||y<partsize);
  }
    
  void move(float[]coords){
    circle(coords[0],coords[1],partsize);
  }
}
