class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();
  public Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  /*void dead(){
    //show = this.x==other.x && this.y==other.y;
    for (SnakePart part : parts){
      if (x>width-part.getPartsize()||x<part.getPartsize()){
        part.test();
      }
      if (y>height-part.getPartsize()||y<part.getPartsize()){
        part.test();
      }
    }
  }*/
  void display(){
    SnakePart head = new SnakePart(x,y,R+100,G+100,B+100,1);
    parts.add(head);
    for (int i = 0; i < 8; i++){
      SnakePart sp = new SnakePart(parts.get(i).getX()+20,parts.get(i).getY()+20,R,G,B,1+(.5*(i+1)));
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
      parts.get(i).dead();
    }
  }
}
