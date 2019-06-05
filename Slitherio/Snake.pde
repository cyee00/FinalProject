class Snake extends Thing implements Moveable{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();//holds the snakeparts of the snake
  ArrayList<float[]> coordinates = new ArrayList<float[]>();//holds coordinates of where snakeparts should go
  
  Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
    SnakePart head = new SnakePart(x,y,R+100,G+100,B+100);//init w head of snake first
    parts.add(head);
    float[] firstcoords = new float[2];
    firstcoords[0]=x;
    firstcoords[1]=y;
    coordinates.add(firstcoords);
    for (int i=0;i<9;i++){ //other 9 units of the snake
      SnakePart part = new SnakePart(20*i+x,20*i+y,R,G,B);//set coords of new part according to prev one
      parts.add(part);
      float[] coords = new float[2];
      coords[0]=part.x;
      coords[1]=part.y;
      coordinates.add(coords);
    }
  }
  
  void display(){
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
