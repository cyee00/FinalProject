# FinalProject

## Project Description

## Directions

## Development Log
#### Monday, May 21st
  * Initialized project folder on github.
  * Wrote Thing class, which is framework that all other classes will follow.
  * Realized that I need a Displayable interface.

#### Tuesday, May 22nd
  * Worked on the Food class.
  * Realized that it'd be easier to just put the color and consumed variables in the Thing class.
  * Revised the Thing constructor to include the color variables.
  * Got Food class written and displayed properly.

#### Wednesday, May 23rd
  * Worked on SnakePart class.
  * Realized that I need a Moveable interface.

#### Thursday, May 24th
  * Started working on Snake class.
  * Realized I needed to access each SnakePart's x and y. Added getX() and getY() to SnakePart class.
  * Changed each SnakePart from circle to ellipse 'cause it looks more snake-like.
  * Worked on moving the Snake. Couldn't get it to work quite right.

#### Friday, May 25th
  * Worked on getting Snake to display properly.
  * A new ellipse was displayed every time I moved my mouse, so it didn't exactly work as intended.

#### Tuesday, May 28th
  * Decided to scrap the whole mouseX mouseY thing and go back to the basics.
  * Started with just one circle. I found a very helpful post on how to get a shape to follow the mouse and was
    finally able to get the Snake to move at least somewhat properly.

#### Wednesday, May 29th
  * Started to program the movement of the entire Snake, not just one part of it.
  * I don't uh, really know how to describe what was happening but it just wasn't working correctly.
    It *kinda* moved like a snake but definitely not how it was supposed to.
  * I also started programming the food being eaten (i.e. Snake touching Food), but couldn't get it working right.

#### Thursday, May 30th
  * Continued trying to work on the Snake movement.
  * Found the source of the problem to be the looping of SnakePart's display(). Tried using loop() and noLoop(), but
    didn't work.

#### Friday, May 31st
  * Finally figured out how to get Snake to display somewhat correctly by moving its display() to setup()!
  * Unfortunately it wasn't completely working properly because the parts clustered all together.
  * Started working on making the Snake die when it touches edge of screen.

#### Sunday, June 2nd
  * Started scrapping my old method for making the snake move in favor of what Mr. K told me in class.
  * Made a new ArrayList to keep track of coordinates. Started working on setting setting the coordinates in the
    constructor, didn't finish.
