class Game {
  // egenskaber
  private int width;
  private int height;
  int numberOfEnemies;
  // konstruktør
  Game(int w, int h, int nE) {
    width = w;
    height=h;
    numberOfEnemies = nE;
  }
  // metoder

  int[][] getBoard() {
    int[][]board  = new int[width][height]; 
    return board;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }
}
