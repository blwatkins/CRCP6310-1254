Shape[] shapes;

void setup() {
  size(500, 500);
  shapes = new Shape[100];
  
  for (int i = 0; i < shapes.length; i++) {
    if (i % 4 == 0) { 
      shapes[i] = new Rectangle(getRandomPosition(), getRandomSpeed(), getRandomDimension()); 
    } else if (i % 4 == 1) {
      shapes[i] = new Square(getRandomPosition(), getRandomSpeed(), random(5, 100)); 
    } else if (i % 4 == 2) {
      shapes[i] = new Ellipse(getRandomPosition(), getRandomSpeed(), getRandomDimension()); 
    } else {
      shapes[i] = new Circle(getRandomPosition(), getRandomSpeed(), random(5, 100));
    }
  }
}

void draw() {
  for (int i = 0; i < shapes.length; i++) {
    shapes[i].display();
    shapes[i].move();
  }
}

PVector getRandomPosition() {
  float x = random(width);
  float y = random(height);
  return (new PVector(x, y));
}

PVector getRandomSpeed() {
  float speedX = random(-5, 5);
  float speedY = random(-5, 5);
  return (new PVector(speedX, speedY));
}

Dimension getRandomDimension() {
  float w = random(5, 100);
  float h = random(5, 100);
  return (new Dimension(w, h));
}
