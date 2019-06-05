class Snake extends Thing{
  ArrayList<SnakePart> parts = new ArrayList<SnakePart>();//holds the snakeparts of the snake
  ArrayList<float[]> coordinates = new ArrayList<float[]>();//holds coordinates of where snakeparts should go
  
  Snake(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
    SnakePart head = new SnakePart(x,y,R+100,G+100,B+100);//init w head of snake first
    parts.add(head);
    float[] firstcoords = new float[2];
    firstcoords[0]=x;
    firstcoords[1]=y;
    coordinates.add(firstcoords); //insert coords of snake head first
    for (int i=0;i<15;i++){ //other units of the snake
      SnakePart part = new SnakePart(20*i+x,20*i+y,R,G,B);//init rest of snake, set coords of new part according to prev one
      parts.add(part);
      float[] coords = new float[2];
      coords[0]=part.x;
      coords[1]=part.y;
      coordinates.add(coords); //insert coords of new part
    }
  }
  
  void display(){
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).display();
    }
  }
  
  void move(float x,float y){
    for (int i = 0; i < parts.size(); i++){
      parts.get(i).move(coordinates.get(i));
    }
    float[] newcoords = new float[2];
    newcoords[0]=x;
    newcoords[1]=y;
    coordinates.add(0,newcoords);//add new set of coordinates to front so head can go there
    coordinates.remove(coordinates.size()-1);//cut off the end of the coordinates
  }
  
  boolean dead(){
    if (parts.get(0).x==0||parts.get(0).x==height||parts.get(0).y==0||parts.get(0).x==width){
      return true;
    }
    return false;
  }
}
