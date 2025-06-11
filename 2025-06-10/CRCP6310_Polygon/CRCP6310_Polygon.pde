void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  if (frameCount % 120 == 0) {
    float x = random(width);
    float y = random(height);
    float r = random(5, 75);
    int s = (int)random(3, 15);
    int red = (int)random(255);
    
    fill(red, 0, 0);
    noStroke();
    polygon(x, y, r, s);
  }
}

void polygon(float x, float y, float radius, int sides) {
  float theta = 0;

  translate(x, y);
  beginShape();

  /*
  for (initialization; boolean expression; incrementation) {
   // code to execute
   // so long as the boolean expression is true
   }
   */

  for (int i = 0; i < sides; i++) {
    // vertices
    // x = cos(angle) * radius
    // y = sin(angle) * radius
    float vx = cos(theta) * radius;
    float vy = sin(theta) * radius;
    vertex(vx, vy);
    theta += TWO_PI / sides;
  }

  endShape(CLOSE);
}
