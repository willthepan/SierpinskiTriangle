int baseLimit = 20;

public void setup()
{
  size(1200, 900);
  noStroke();
}

public void draw()
{
  background(0);
  sierpinski(100, height - 100, 800);
  noLoop();
}

public void mouseDragged()
{
  baseLimit = constrain(mouseX / 10, 5, 80);
  redraw();
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= baseLimit)
  {
    fill(255);
    triangle(
      x, y,
      x + len, y,
      x + len / 2, y - len
    );
  }
  else
  {
    sierpinski(x, y, len / 2);
    sierpinski(x + len / 2, y, len / 2);
    sierpinski(x + len / 4, y - len / 2, len / 2);
  }
}
