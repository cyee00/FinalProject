abstract class Thing{
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

public class Food extends Thing{
  Food(float x, float y){
    super(x,y,(int)random(225),(int)random(225),(int)random(225));
  }
  void display(){
    circle(this.x,this.y,25);
  }
}
