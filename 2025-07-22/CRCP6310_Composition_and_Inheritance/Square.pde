class Square extends Rectangle {
  Square() {
    super();
  }
  
  Square(PVector position, PVector speed, float sideLength) {
    super(position, speed, new Dimension(sideLength));
    style = new Style(color(255, 255, 0), color(0), 2.5);
  }
}
