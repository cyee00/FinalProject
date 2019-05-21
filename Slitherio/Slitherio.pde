ArrayList<Displayable> toDisplay;
void setup(){
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  for (int i = 0; i < 20; i++){
    Food f = new Food(25+random(height), 25+random(width));
    toDisplay.add(f);
  }
}

void draw(){
  background(255);
  for (Displayable obj : toDisplay){
    obj.display();
  }
}
