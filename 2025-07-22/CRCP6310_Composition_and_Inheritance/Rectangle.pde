class Rectangle extends Shape {
  Rectangle() {
     super();
  }
  
  Rectangle(PVector position, PVector speed) {
    super(position, speed, new Style(color(255, 0, 0), color(0, 0, 255), 3), new Dimension(100, 50)); 
  }
  
  Rectangle(PVector position, PVector speed, Dimension dimension) {
    super(position, speed,  new Style(color(255, 0, 0), color(0, 0, 255), 3), dimension);
  }
  
  void display() {
    rectMode(CENTER);
    style.apply();
    rect(position.x, position.y, dimension.getWidth(), dimension.getHeight());
  }
}
