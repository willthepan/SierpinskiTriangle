int baseLimit = 20;

void settings() {
  size(1000, 800);
}

void setup() {
  noStroke();
}

void draw() {
  background(10);
  sierpinski(100, height - 100, width - 200);
  noLoop();
}

void sierpinski(float x, float y, float len) {
  if (len <= baseLimit) {
    fill(map(len, baseLimit, width, 50, 255), 150, 255 - map(len, baseLimit, width, 50, 255));
    triangle(
      x, y,
      x + len, y,
      x + len / 2, y - len
    );
  } else {
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}
