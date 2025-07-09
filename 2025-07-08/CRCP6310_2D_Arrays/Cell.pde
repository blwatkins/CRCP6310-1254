class Cell {
  boolean isFree;

  Cell() {
    isFree = true;
  }

  void display(float x, float y, float w, float h) {
    if (isFree) {
      noFill();
    } else {
      fill(0, 0, 255);
    }

    stroke(0);
    strokeWeight(5);
    rect(x, y, w, h);
  }
  
  void block() {
    isFree = false; 
  }
  
  void free() {
    isFree = true;
  }
}
