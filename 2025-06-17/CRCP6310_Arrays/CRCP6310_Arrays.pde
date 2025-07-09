// circles
// random x pos
// random y pos
// random size

int circleTotal;

// declaring the array reference
float[] xs;    // { 0 , 1 , 2 }
float[] ys;    // { 0 , 1 , 2 }
float[] sizes; // { 0 , 1 , 2 }


void setup() {
  size(500, 500);

  circleTotal = 50;

  // initialize the array
  xs = new float[circleTotal];
  println("xs = " + xs);

  ys = new float[circleTotal];
  println("ys = " + ys);
  println();
  // [   ,    ,   ]
  //   0   1    2
  
  sizes = new float[circleTotal];

  println("xs:");
  println(xs);
  println();

  println("ys:");
  println(ys);
  println();

  //xs[0] = random(width);
  //xs[1] = random(width);
  //xs[2] = random(width);

  //ys[0] = random(height);
  //ys[1] = random(height);
  //ys[2] = random(height);

  for (int i = 0; i < circleTotal; i++) {
    sizes[i] = random(10, 150);
    xs[i] = random(sizes[i] / 2.0, width - (sizes[i] / 2.0));
    ys[i] = random(sizes[i] / 2.0, height - (sizes[i] / 2.0));
  }
}

void draw() {
  background(0);
  strokeWeight(5);
  stroke(0, 255, 0);
  noFill();
  //ellipse(xs[0], ys[0], 50, 50);
  //ellipse(xs[1], ys[1], 50, 50);
  //ellipse(xs[2], ys[2], 50, 50);
  
  for (int i = 0; i < circleTotal; i++) {
    ellipse(xs[i], ys[i], sizes[i], sizes[i]); 
  }
}
