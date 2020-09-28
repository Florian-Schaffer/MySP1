//class
Game game;
//loaded from data
PFont font;


void setup() {
  size(1001, 1001);
  //hastighed
  frameRate(10); 
  font = loadFont("Serif-16.vlw");
  //størrelse 
  textFont(font, 16);
  //class igen
  game = new Game(25, 25, 5, 5);
}

void draw() {
  //kalder update
  game.update();
  background(0); //black
  //dobbelt array, nest in a nest  
  int[][] board = game.getBoard();
  //for loop. nest kommer ind i for loop
  for (int y = 0; y < game.getHeight(); y++) {
    for (int x = 0; x < game.getWidth(); x++) {
      //println(board[x][y]);
      if (board[x][y]==1) {
        //printer firkant spiller står i
        println("player found " + x + " " + y);
        fill(0, 0, 255); //blå - dot
      } else if (board[x][y]==2) {
        fill(255, 0, 0); //rød - enemies
      } else if (board[x][y]==3) {
        fill(0, 255, 0); //grøn 
     } else if (board[x][y]==0) { 
        fill(0, 0, 0); //går væk fra en firkant - ingen farve - baggrunden 
      }
      stroke(100, 100, 100); //farve på linjer 
      rect(x*40, y*40, 40, 40); //firkanter størrelse
    }
  }
    fill(255); //hvid riller
  text("Lifes: "+game.playerLife, 25,25); //Hvor mange liv der er tilbage

}

//kalder metoden i class
void keyPressed() {
  game.onKeyPressed(key);
}

//kalder metoden i class
void keyReleased() {
  game.onKeyReleased(key);
}
