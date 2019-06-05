ArrayList<Displayable> toDisplay;
ArrayList<Food> food;
Snake snake = new Snake(height/2,width/2);
int foodLeft = 70;

void setup(){
  frameRate(15); //set framerate optimal for snake movement
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  food = new ArrayList<Food>();
  snake.display();
  for (int i = 0; i < 70; i++){//randomly generate pieces of food
    //Food f = new Food(random(height+200), random(width+450));//generate 20 pieces of food at random places
    Food f = new Food(random(width), random(height));
    toDisplay.add(f);
    food.add(f);
  }
}

void draw(){
  background(255); //make background white
  for (Displayable obj : toDisplay){//display everything
    obj.display();
  }
  snake.move(mouseX,mouseY);
  for (int i=0;i<food.size();i++){
    textSize(30);
    if (snake.touching(food.get(i))){
      //text("testing: touching: "+snake.touching(food.get(i)),100,300);
      food.get(i).hide();
      food.remove(i);
      foodLeft--;
    }
  }
  if (foodLeft==0){
    //textSize(50);
    text("YOU WON!",width/2-100,height/2-100);
    noLoop();
  }
  text("Snakes left: "+foodLeft,750,600);
}
