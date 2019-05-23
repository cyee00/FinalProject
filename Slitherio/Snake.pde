class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();
  public Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    SnakePart head = new SnakePart(x,y,R,G,B);
    parts.add(head);
    /*for (int i = 0; i < 9; i++){
      SnakePart sp = new SnakePart(parts.get(i).getX()+1,parts.get(i).getY()+1,R,G,B);
      parts.add(sp);
    }*/
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).display();
    }
  }
  void move(){
  }
}
