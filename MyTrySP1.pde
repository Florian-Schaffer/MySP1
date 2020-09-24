Game game;
PFont font;

void setup() {
  size(1001, 1001);
  frameRate(10);
  font = createFont("Serif-16", 16, true);
  textFont(font, 16);
  game = new Game(25, 25, 5);
  
}

void draw() {
  background(0);
  int[][] board = game.getBoard();
  for (int y = 0; y < game.getHeight(); y++) {
    for (int x = 0; x < game.getWidth(); x++) {
      println(board[x][y]);
    }
  }
}
