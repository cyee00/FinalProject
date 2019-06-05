ArrayList<Displayable> toDisplay;
ArrayList<Food> food;
Snake snake = new Snake(height/2,width/2);

void setup(){
  frameRate(15); //set framerate optimal for snake movement
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  food = new ArrayList<Food>();
  snake.display();
  for (int i = 0; i < 70; i++){
    Food f = new Food(random(height+200), random(width+450));//generate 20 pieces of food at random places
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
    textSize(50);
    if (snake.touching(food.get(i))){
      text("testing: touching: "+snake.touching(food.get(i)),100,300);
      food.get(i).hide();
      food.remove(i);  
      Food newFood = new Food(random(height+200), random(width+450));
      food.add(newFood);
    }
    /*if (food.get(i).touching(snake)){//for each piece of food, check if it has been eaten by snake
      food.remove(i);  
      Food newFood = new Food(random(height+200), random(width+450));
      food.add(food.size(),newFood);
    }*/
  }
}
