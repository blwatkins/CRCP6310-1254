size(500, 500);
rectMode(CENTER);

// angle mode --> RADIANS
// rotation occurs about the origin
// move the origin (0, 0);
pushMatrix();
translate(250, 250);

// blue
pushMatrix(); // save our coordinate system
rotate(radians(45));
fill(0, 0, 255, 100);
rect(0, 0, 100, 25);
popMatrix(); // restore the saved coordinate system

// red
rotate(radians(-45));
fill(255, 0, 0, 100);
rect(0, 0, 100, 25);
popMatrix();

String stuff = "this is a processing sketch!";
fill(0);
textSize(32);
textAlign(CENTER, CENTER);
text(stuff, 250, 100);
text(stuff, 250, 400);
save("cross.png");
