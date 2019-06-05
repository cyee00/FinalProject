interface Displayable{ //to keep everything that needs to be displayed organized
  void display();
}

abstract class Thing implements Displayable{
  float x,y; //coordinates of the Thing
  boolean show=true; //by default, Thing still alive and shows, has not been eaten 
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
