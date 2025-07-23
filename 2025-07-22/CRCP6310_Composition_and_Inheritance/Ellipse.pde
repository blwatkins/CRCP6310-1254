class Ellipse extends Shape {
  Ellipse() {
     super();
  }
  
  Ellipse(PVector position, PVector speed) {
    super(position, speed, new Style(color(0, 0, 255), color(255, 255, 0), 5), new Dimension(100, 50)); 
  }
  
  Ellipse(PVector position, PVector speed, Dimension dimension) {
    super(position, speed,  new Style(color(0, 0, 255), color(255, 255, 0), 5), dimension);
  }
  
  void display() {
    style.apply();
    ellipse(position.x, position.y, dimension.getWidth(), dimension.getHeight());
  }
}
