class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();
  public Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void touching(Thing other){
    show = this.x==other.x && this.y==other.y;
  }
  void display(){
    SnakePart head = new SnakePart(x,y,R,G,B,.1);
    parts.add(head);
    for (int i = 0; i < 5; i++){
      SnakePart sp = new SnakePart(parts.get(i).getX()+10,parts.get(i).getY()+10,R,G,B,.1+(.05*(i+1)));
      parts.add(sp);
    }
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).display();
    }
    //noLoop();
  }
  void move(){
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).move();
    }
  }
}
