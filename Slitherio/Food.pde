class Food extends Thing{
  Food(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    fill(R,G,B);
    circle(this.x,this.y,15);
  }
}
