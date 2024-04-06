//
//  Matrix
final int cols = 18;
final int rows = 18;
int colWidth;
int rowHeight;
//
final int isEmpty=0;
final int hasApple=1;
final int hasSnake=2;
//
// 2D array
int[][] matrix = new int [cols][rows];
//
void setup() {
  size(600, 600);
  background(255);
  colWidth = width/cols;
  rowHeight = height/rows;
  println (colWidth);
  println (rowHeight);
  // init
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      matrix [i][j] = isEmpty;
    }
  }
  matrix[3][8] = hasApple;
  matrix[7][8] = hasApple;
  matrix[11][8] = hasSnake;
}
//
void draw() {
  background(0);
  //  
  stroke(244);
  strokeWeight(2); // thin outline
  //
  // double for-loop for the 2D array
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // what cell is it?
      if (matrix [i][j] == isEmpty) {
        fill(11, 11, 11);
      }
      else if (matrix [i][j] == hasApple) {
        fill(255, 2, 2); // red
      }
      else if (matrix [i][j] == hasSnake) {
        fill(255, 2, 255); // snake
      }
      //
      stroke(2, 2, 225); // blue
      rect(i*colWidth+2, j*rowHeight+2, colWidth, rowHeight );
    } // for
  } // for
  //
}
