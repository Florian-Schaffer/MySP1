class Dot {
  // egenskaber
  int xPos;
  int yPos;
  int xMax;
  int yMax;
  
  // konstruktør
  Dot(int x, int y, int maxX, int maxY) {
     xPos=x;
     yPos=y;
     xMax=maxX;
     yMax=maxY;
  }
  //player = new Dot(0,0,width-1, height-1);
  // metoder
  
  int getX() {
    return xPos;
  }

  int getY() {
    return yPos;
  }
  
}
