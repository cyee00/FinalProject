ArrayList<Displayable> toDisplay;
ArrayList<Food> food;
ArrayList<Moveable> toMove;
Snake snake = new Snake(height/2,width/2);

void setup(){
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  toMove = new ArrayList<Moveable>();
  food = new ArrayList<Food>();
  snake.display();
  toMove.add(snake);
  for (int i = 0; i < 20; i++){
    Food f = new Food(25+random(height), 25+random(width));
    toDisplay.add(f);
    food.add(f);
  }
  //noLoop();
}

void draw(){
  background(255); //make background white
  for (Displayable obj : toDisplay){
    obj.display();
  }
  for (Moveable obj : toMove){
    obj.move();
  }
  /*for (Food f : food){
    f.eaten(snake);
  }*/
}
