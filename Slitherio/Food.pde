class Food extends Thing{
  boolean show = true;
  Food(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    if (show){
    fill(R,G,B);
    circle(this.x,this.y,15);
    }
  }
  void hide(){//when called, food should hide/not display anymore
    show=false;
  }
}
