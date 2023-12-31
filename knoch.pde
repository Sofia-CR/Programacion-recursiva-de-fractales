KochFractal k;

void setup() {
  size(640, 360);
  frameRate(1);  // Animate slowly
  k = new KochFractal();
}

void draw() {
  background(255);
  // Draws the snowflake!
  k.render();
  // Iterate
  k.nextLevel();
  // Let's not do it more than 5 times. . .
  if (k.getCount() > 5) {
    k.restart();
  }
}
