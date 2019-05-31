class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();
  ArrayList<int[]> coordinates;
  public Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
    coordinates = new ArrayList<int[]>();
  }
  void display(){
    SnakePart head = new SnakePart(x,y,R+100,G+100,B+100,.5);
    parts.add(head);
    for (int i = 0; i < 8; i++){
      SnakePart sp = new SnakePart(parts.get(i).getX()+20,parts.get(i).getY()+20,R,G,B,.5+(.2*(i+1)));
      parts.add(sp);
    }
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).display();
    }
  }
  void move(){
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).move();
      parts.get(i).dead();
    }
  }
}
