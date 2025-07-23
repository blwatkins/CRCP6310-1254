class Dimension {
  float w;
  float h;
  
  Dimension() {
    w = 1;
    h = 1;
  }
  
  Dimension(float s) {
    w = s;
    h = s;
  }
  
  Dimension(float w, float h) {
    this.w = w;
    this.h = h;
  }
  
  float getWidth() {
    return w;
  }
  
  float getHeight() {
    return h; 
  }
}
