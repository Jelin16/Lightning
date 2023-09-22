int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup() {
  size(300, 300);
  strokeWeight(3);
  background(255);
  frameRate(120);
}

void draw() {
  fill(255, 255, 255, 15);
  rect(0, 0, 300, 300);
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  endX = startX + (int)(Math.random() * 19) - 9;
  endY = startY + (int)(Math.random() * 10);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;

  if (endY > 300) {
    startX = 150;
    startY = 0;
    endX = 150;
    endY = 0;
    background(255);
  }
}


void mousePressed() {
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  background((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
}

