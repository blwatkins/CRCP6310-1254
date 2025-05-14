float angle;

void setup() {
  size(500, 500);
  angle = 0;
}

void draw() {
  background(255);
  rectMode(CENTER);
  translate(250, 250);

  // blue
  pushMatrix();
  rotate(radians(angle));
  fill(0, 0, 255, 100);
  rect(0, 0, 100, 25);
  popMatrix();

  // red
  rotate(radians(-45));
  fill(255, 0, 0, 100);
  rect(0, 0, 100, 25);
  
  angle = angle + 1;
}

void mousePressed() {
  println("(" + mouseX + ", " + mouseY + ")");
}
