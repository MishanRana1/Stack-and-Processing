void setup() {
  size(420, 420);
  background(235);
  noStroke();
  ellipseMode(CENTER);
  
  int cx = width/2;
  int[] ys = {110, 210, 310};
  int big = 160;
  int small = 70;
  
  for (int y : ys) {

    fill(180);
    ellipse(cx, y, big, big);
    
    fill(90);
    float offset = big * 0.35;
    ellipse(cx - offset, y, small, small);
    ellipse(cx + offset, y, small, small);
    
    fill(140);
    ellipse(cx, y, big * 0.55, big * 0.55);
  }
}