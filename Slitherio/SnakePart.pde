class SnakePart extends Thing{
  float partsize = 30; //default spawn size s\et at 30
  SnakePart(float x, float y, int red, int green, int blue){
    super(x,y,red,green,blue);
  }
  
  void display(){
    fill(R,G,B);//set colors acc to parent snake
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
    
  void move(float[]coords){
    ellipse(coords[0],coords[1],partsize,partsize);
  }
}
