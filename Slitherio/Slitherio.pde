ArrayList<Displayable> toDisplay;
ArrayList<Moveable> toMove;

void setup(){
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  toMove = new ArrayList<Moveable>();
  //for (int i = 0; i < 10; i++){
    Snake snake = new Snake(25+random(height), 25+random(width));
    toDisplay.add(snake);
    toMove.add(snake);
  //}
  for (int i = 0; i < 20; i++){
    Food f = new Food(25+random(height), 25+random(width));
    toDisplay.add(f);
  }
}

void draw(){
  background(255); //make background white
  for (Displayable obj : toDisplay){
    obj.display();
  }
  for (Moveable obj : toMove){
    obj.move();
  }
}
