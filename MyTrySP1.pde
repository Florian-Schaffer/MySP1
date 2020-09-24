Game game;
PFont font;

void setup() {
  size(1001, 1001);
  frameRate(10);
  font = loadFont("Serif-16.vlw");
  textFont(font, 16);
  game = new Game(25, 25, 5);
}

void draw() {
  game.update();
  background(0);
  int[][] board = game.getBoard();
  for (int y = 0; y < game.getHeight(); y++) {
    for (int x = 0; x < game.getWidth(); x++) {
      //println(board[x][y]);
      if (board[x][y]==1) { //<>//
        println("player found " + x + " " + y);
        fill(0, 0, 255);
      } else if (board[x][y]==2) {
        fill(255, 0, 0);
      } else if (board[x][y]==3) {
        fill(0, 255, 0);
      } else if (board[x][y]==0) {
        fill(0, 0, 0);
      }
      stroke(100, 100, 100);
      rect(x*40, y*40, 40, 40);
    }
  }

}

void keyPressed() {
  game.onKeyPressed(key);
  /*
  if (key == 'a' || key == 'A') {
    game.player.moveDown();
  }
  if (key == 's' || key == 'S') {
    game.player.moveRight();
  }
  */
}

void keyReleased() {
  game.onKeyReleased(key);
}
