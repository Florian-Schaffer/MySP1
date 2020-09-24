class Game { //<>//
  // egenskaber
  int w;
  int h;
  int numberOfEnemies;
  int playerLife;
  int[][]board;
  Dot player;
  Dot[] enemies;
  Keys keys;

  // konstruktør
  Game(int gW, int gH, int nE) {
    w = gW;
    h = gH;
    numberOfEnemies = nE;
    enemies = new Dot[nE];
    playerLife=100; //<>//
    board  = new int[gW][gH];
    player = new Dot(0, 1, w-1, h-1);
    keys = new Keys();

    for (int i = 0; i < nE; ++i) {
      enemies[i] = new Dot(w-1, h-1, w-1, h-1);
    }
  }
  // metoder

  int[][] getBoard() { 
    return board;
  }

  public int getWidth()
  {
    return h;
  }

  public int getHeight()
  {
    return w;
  }
  
  void onKeyPressed(char k) {
    keys.onKeyPressed(k);
    
  }
  void onKeyReleased(char k) {
    keys.onKeyReleased(k);
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
    if (keys.wDown) { 
      player.moveUp();
    }
    if (keys.aDown) {
      player.moveLeft();
    }
    // cond3 relateret til keypressed a
    if (keys.sDown) {
      player.moveDown();
    }
    if (keys.dDown) {
      player.moveRight();
    }
  }

  void updateEnemies() {
  }

  void checkForCollisions() {
    // dvs hvis der er 1 i feltet og 2 er samme sted har vi koll
    // spør hver fjende er du samme sted som player?
    for (int i=0; i<enemies.length; i++) {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY()) {
        // then coll and player looses one lifepoint
        //playerLift--;
      }
    }
  }

    void clearBoard() {
      for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
          board[x][y]=0;
        }
      }
    }

    void populateBoard() {
      // insert player
      board[player.getX()][player.getY()] = 1; //<>//
      for (int i = 0; i < enemies.length; ++i) {
        board[enemies[i].getX()][enemies[i].getY()]= 2;
      }
    }
  }
