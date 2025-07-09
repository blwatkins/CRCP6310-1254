class Block {
  int row;
  int col;
  
  Block(int row, int col) {
    this.row = row;
    this.col = col;
    occupy();
  }
  
  void move() {
    if (isSpace()) {
      leave();
      row++;
      occupy();
    }
  }
  
  void leave() {
    if (isValidRow(row) && isValidCol(col)) {
      cells[row][col].free(); 
    }
  }
  
  void occupy() {
    if (isValidRow(row) && isValidCol(col)) {
      cells[row][col].block(); 
    }
  }
  
  boolean isSpace() {
    boolean isSpace = false;
    
    if (isValidRow(row + 1)) {
      isSpace = cells[row + 1][col].isFree;
    }
    
    return isSpace;
  }
}
