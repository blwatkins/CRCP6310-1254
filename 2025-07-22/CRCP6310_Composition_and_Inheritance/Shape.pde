abstract class Shape {
  PVector position;
  PVector speed;
  Style style;
  Dimension dimension;
  
  Shape() {
    position = new PVector();
    speed = new PVector();
    style = new Style();
    dimension = new Dimension();
  }
  
  Shape(PVector position, PVector speed, Style style, Dimension dimension) {
    this.position = position;
    this.speed = speed;
    this.style = style;
    this.dimension = dimension;
  }
  
  abstract void display();
  
  void move() {
     position.add(speed);
     
     float maxX = width + (dimension.getWidth() / 2.0);
     float minX = 0 - (dimension.getWidth() / 2.0);
     float maxY = height + (dimension.getHeight() / 2.0);
     float minY = 0 - (dimension.getHeight() / 2.0);
     
     if (position.x > maxX) {
       position.x = minX;
     } else if (position.x < minX) {
       position.x = maxX; 
     }
     
     if (position.y > maxY) {
       position.y = minY; 
     } else if (position.y < minY) {
       position.y = maxY; 
     }
  }
}
