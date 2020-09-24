class Game { //<>//
  // egenskaber
  int width;
  int height;
  int numberOfEnemies;
  int playerLife;
  int[][]board;
  Dot player;
  Dot[] enemies;

  // konstruktør
  Game(int w, int h, int nE) {
    width = w;
    height=h;
    numberOfEnemies = nE;
    playerLife=100;
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
    updatePlayer();
    updateEnemies();
    checkForCollisions();
    clearBoard();
    populateBoard();
  }

  void updatePlayer() {
    // tjekke om spilleren har trykket på a,s,d eller w
    player.moveUp();
    player.moveLeft();
    player.moveDown();
    player.moveRight();
  }

  void updateEnemies() {
  }

  void checkForCollisions() {
    // dvs hvis der er 1 i feltet og 2 er samme sted har vi koll
    // spør hver fjende er du samme sted som player?
    for(int i=0;i<enemies.length;i++) {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY()) {
        // then coll and player looses one lifepoint
        playerLift--;
        
    }
  }

  void clearBoard() {
    for (int y = 0; y < height; ++y) {
      for (int x = 0; x < width; ++x) {
        board[x][y]=0;
      }
    }
  }

  void populateBoard() {
    // insert player
    board[player.getX()][player.getY()] = 1;
    for (int i = 0; i < enemies.length; ++i) {
      board[enemies[i].getX()][enemies[i].getY()]= 2;
    }
  }
}
