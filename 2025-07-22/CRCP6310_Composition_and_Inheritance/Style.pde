class Style {
  color fill;
  color stroke;
  float strokeWeight;
  
  Style() {
    fill = color(255);
    stroke = color(0);
    strokeWeight = 1;
  }
  
  Style(color fill, color stroke, float strokeWeight) {
    this.fill = fill;
    this.stroke = stroke;
    this.strokeWeight = strokeWeight;
  }
  
  void apply() {
    fill(fill);
    stroke(stroke);
    strokeWeight(strokeWeight);
  }
}
