void setup() {
  size(1000, 1000);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(width/2, height/2, 150, 6);
}

void drawCircle(float x, float y, float radius, int level) {
  float tt = 126 * level/4.0;
  fill(tt);
  
  ellipse(x, y, radius*2, radius*2);
  if (level > 1) {
    drawCircle(x + radius, y, radius / 2, level - 1);
    drawCircle(x - radius, y, radius / 2, level - 1);
  }
}