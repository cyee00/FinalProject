abstract class Thing{
  float x,y; //Coordinates of the Thing
  Thing (float x, float y){
    this.x=x;
    this.y=y;
  }
  abstract void display();
}
