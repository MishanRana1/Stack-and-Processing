void setup() {
  size(480, 480);
  background(235);
  noStroke();
  ellipseMode(CENTER);

  fill(150);
  ellipse(width/2, height/2, 120, 120);

  translate(width/2, height/2);

  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotate(radians(45 * i));

    fill(110);
    ellipse(0, 0, 70, 200);
    fill(80);
    ellipse(0, 0, 40, 140);

    fill(60);
    ellipse(100, 0, 36, 36);
    popMatrix();
  }

  resetMatrix();
  fill(100);
  ellipse(width/2, height/2, 70, 70);
}