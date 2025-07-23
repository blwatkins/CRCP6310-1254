class Circle extends Ellipse {
  Circle() {
    super();
  }
  
  Circle(PVector position, PVector speed, float diameter) {
    super(position, speed, new Dimension(diameter));
    style = new Style(color(0, 255, 0), color(255), 10);
  }
}
