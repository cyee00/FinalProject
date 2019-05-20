interface Displayable{ //to keep everything that needs to be displayed organized
  void display();
}

abstract class Thing implements Displayable{
  float x,y; //coordinates of the Thing
  boolean consumed=false; //by default, Thing still alive, has not been eaten 
  int R,G,B; //colors of the Thing
  Thing (float x, float y, int red, int green, int blue){
    this.x=x;
    this.y=y;
    R=red;
    G=green;
    B=blue;
  }
  abstract void display();
}

class Food extends Thing{
  Food(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    fill(R,G,B);
    circle(this.x,this.y,15);
  }
}


ArrayList<Displayable> toDisplay;
void setup(){
  size(1000,650);
  toDisplay = new ArrayList<Displayable>();
  for (int i = 0; i < 20; i++){
    Food f = new Food(25+random(height*2), 25+random(width*2));
    toDisplay.add(f);
  }
}

void draw(){
  background(255);
  for (Displayable obj : toDisplay){
    obj.display();
  }
}
