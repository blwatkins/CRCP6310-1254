PImage rocksImage;

void setup() {
  size(500, 500, P2D);
  rocksImage = loadImage("rocks.jpg");
  textureMode(NORMAL);
  wall();
}

void draw() {
}

void wall() {
  float y = random(-25, -5);
  
  while (y < height) {
    float h = random(50, 100);
    float x = random(-25, -5);
    
    while (x < width) {
      float w = random(50, 100);
      brick(x, y, w, h);
      x += w;
    }

    y += h;
  }
}

void brick(float x, float y, float w, float h) {
  stroke(0);
  strokeWeight(5);
  beginShape();
  texture(rocksImage);
  vertex(x, y, 0, 0);
  vertex(x + w, y, 1, 0);
  vertex(x + w, y + h, 1, 1);
  vertex(x, y + h, 0, 1);
  endShape(CLOSE);
}
