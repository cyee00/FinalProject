class Food extends Thing{
  Food(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    fill(R,G,B);
    if (show){
      circle(this.x,this.y,15);
    } else {
      fill(0,0,0);
    }
  }
  void eaten(Snake snake){
    show = this.x==snake.x && this.y==snake.y;
  }
}
