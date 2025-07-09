// 2D Array Applications
// Tetris - Grid

// 2D Grid
// Cells
// - n rows & cols
// - cell: occupied by a block or free
// Blocks
// - Click to place a block
// - When you have a full row of blocks,
//   the blocks disapear
// Time Permitting:
// - blocks fall to bottom of the screen

int rows;
int cols;

Cell[][] cells;

ArrayList<Block> blocks;

void setup() {
  size(500, 500);
  rows = 10;
  cols = rows;

  // initialize the cells array
  cells = new Cell[rows][cols];

  // cells[0] ==> [ Cell, Cell, Cell, ...];
  printArray(cells[0]);
  println();

  // initialize each cell in the 2D array
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      cells[row][col] = new Cell();
    }
  }

  printArray(cells[0]);
  
  blocks = new ArrayList<Block>();
}

void draw() {
  background(255);

  float w = width / (float)cols;
  float h = height / (float)rows;

  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < cols; col++) {
      float x = w * col;
      float y = h * row;
      cells[row][col].display(x, y, w, h);
    }
  }
  
  if (frameCount % 180 == 0) {
    gridCheck();
    
    
    for (int i = 0; i < blocks.size(); i++) {
      blocks.get(i).move(); 
    }
  }
}

void mousePressed() {
  float w = width / (float)cols;
  float h = height / (float)rows;
  int col = (int)(mouseX / w);
  int row = (int)(mouseY / h);

  if (isValidCol(col) && isValidRow(row)) {
    if (cells[row][col].isFree) {
      blocks.add(new Block(row, col));
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    println("block count = " + blocks.size()); 
  }
}

void gridCheck() {
  for (int row = 0; row < rows; row++) {
    boolean isBlocked = isRowBlocked(row);

    if (isBlocked) {
      freeRow(row);
      destroyBlocks(row);
    }
  }
}

boolean isRowBlocked(int row) {
  boolean isBlocked = true;

  if (isValidRow(row)) {
    for (int col = 0; col < cols; col++) {
      if (cells[row][col].isFree) {
        isBlocked = false;
        break;
      }
    }
  }

  return isBlocked;
}

void freeRow(int row) {
  if (isValidRow(row)) {
    for (int col = 0; col < cols; col++) {
      cells[row][col].free();
    }
  }
}

boolean isValidRow(int row) {
  return (row >= 0) && (row < rows);
}

boolean isValidCol(int col) {
 return (col >= 0) && (col < cols);
}

void destroyBlocks(int row) {
  IntList toDelete = new IntList();
  
  for (int i = 0; i < blocks.size(); i++) {
    if (blocks.get(i).row == row) {
      toDelete.append(i); 
    }
  }
  
  for (int i = toDelete.size() - 1; i >= 0; i--) {
    int deleteIndex = toDelete.get(i);
    blocks.remove(deleteIndex);
  }
}
