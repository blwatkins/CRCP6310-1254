// design drawn in a function
// random position

// global variables
float x;
float y;

float x2;
float y2;

void setup() {
  size(500, 500);
  x = random(width);
  y = random(height);
  
  x2 = random(width);
  y2 = random(height);
}

void draw() {
  fill(255, 25);
  noStroke();
  rectMode(CENTER);
  rect(250, 250, 300, 300);
  
  design(250, 250);
  design(100, 100);
  design(400, 100);
  design(x, y);
  design(x2, y2);

  if (frameCount % 240 == 0) {
    x = random(width);
    y = random(height);
  }
}

void keyPressed() {
  x2 = random(width);
  y2 = random(height);
}

void mousePressed() {
  design(mouseX, mouseY);
}

void design(float x, float y) {
  stroke(0);
  strokeWeight(3);
  line(x + 00, y - 25, x + 00, y + 25);
  line(x - 25, y + 00, x + 25, y + 00);
  line(x - 25, y - 25, x + 25, y + 25);
  line(x - 25, y + 25, x + 25, y - 25);

  fill(255);
  ellipse(x + 00, y - 25, 10, 10);
  ellipse(x + 00, y + 25, 10, 10);
  ellipse(x - 25, y + 00, 10, 10);
  ellipse(x + 25, y + 00, 10, 10);
}
