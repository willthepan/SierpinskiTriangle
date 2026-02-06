let baseLimit = 20;

function setup() {
  createCanvas(600, 520);
  noStroke();
}

function draw() {
  background(10);
  sierpinski(50, height - 50, width - 100);
  noLoop();
}

function sierpinski(x, y, len) {
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
