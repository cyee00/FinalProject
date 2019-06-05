ArrayList<Displayable> toDisplay;
ArrayList<Food> food;
Snake snake = new Snake(height/2,width/2);

void setup(){
  frameRate(15); //set framerate optimal for snake movement
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  food = new ArrayList<Food>();
  snake.display();
  for (int i = 0; i < 50; i++){
    Food f = new Food(random(height+200), random(width+450));//generate 20 pieces of food at random places
    toDisplay.add(f);
    food.add(f);
  }
}

void draw(){
  background(255); //make background white
  for (Displayable obj : toDisplay){//display the Food
    obj.display();
  }
  snake.move(mouseX,mouseY);
  if (snake.dead()){
    text("YOU HAVE DIED",height/2,width/2);
    noLoop();
  }
  for (Food f : food){
    if (f.eaten(snake)){
    }
  }
}
