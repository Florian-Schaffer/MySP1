class Game { //<>//
  // egenskaber
  int width;
  int height;
  int numberOfEnemies;
  int[][]board;
  Dot player;
  Dot[] enemies;

  // konstruktør
  Game(int w, int h, int nE) {
    width = w;
    height=h;
    numberOfEnemies = nE;
    board  = new int[width][height];
    player = new Dot(0, 0, width-1, height-1);

    for (int i = 0; i < nE; ++i) {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
  }
  // metoder

  int[][] getBoard() { 
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


  void update() {
    populateBoard();
  }

  void populateBoard() {
    // insert player
    board[player.getX()][player.getY()] = 1;
    for (int i = 0; i < enemies.length; ++i) {
      board[enemies[i].getX()][enemies[i].getY()]= 2;
    }
  }
}
