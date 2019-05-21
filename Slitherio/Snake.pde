class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();
  public Snake(){
    super(mouseX,mouseY,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    for (int i = 0; i < 10; i++){
      SnakePart sp = new SnakePart(x,y,R,G,B);
      parts.add(sp);
    }
    for (int i = 0; i < parts.size(); i++){
      parts.get(i);
    }
  }
  void move(){
  }
}
