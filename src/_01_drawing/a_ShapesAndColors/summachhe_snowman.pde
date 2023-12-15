void setup() {
  size(400, 600);
}

void draw() {
  background(200, 220, 255); // Light blue background

  // Falling snow
  drawSnow();

  // Snowman
  drawSnowman(200, 400);
  drawSnow();
}

void drawSnowman(float x, float y) {
  // Bottom snowball
  fill(255); // White color
  noStroke();
  ellipse(x, y + 120, 150, 150);

  // Middle snowball
  ellipse(x, y + 60, 100, 100);

  // Top snowball
  ellipse(x, y, 70, 70);

  // Eyes
  fill(0); // Black color
  ellipse(x - 20, y - 10, 10, 10);
  ellipse(x + 20, y - 10, 10, 10);

  // Nose
  fill(255, 140, 0); // Orange color
  triangle(x, y - 5, x + 10, y + 10, x - 10, y + 10);

  // Mouth
  stroke(0); // Black color
  noFill();
  arc(x, y + 10, 40, 20, 0, PI);

  // Hat
  fill(0); // Black color
  rect(x - 50, y - 50, 100, 20);
  rect(x - 30, y - 100, 60, 50);

  // Scarf
  fill(255, 0, 0); // Red color
  rect(x - 20, y - 50, 40, 10, 5);

  // Buttons
  fill(0); // Black color
  ellipse(x, y + 40, 10, 10);
  ellipse(x, y + 80, 10, 10);
  ellipse(x, y + 120, 10, 10);
}

void drawSnow() {
  // Falling snow
  fill(255);
  for (int i = 0; i < 100; i++) {
    float snowX = random(width);
    float snowY = random(height);
    ellipse(snowX, snowY, 5, 5);
  }
}
