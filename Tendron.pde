int TendronLength = 1;
float segmentLength = 8;
int numSegments = 30;
boolean move = true;

void setup() {
  size(1000, 1000);
  background(0);
  Cluster cluster = new Cluster(width / 2, height / 2, numSegments);
  cluster.show();
}

void draw() {
  if (move) {
    background(0);
    Cluster cluster = new Cluster(width / 2, height / 2, numSegments);
    cluster.show();
    move = false;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    move = true;
  }
}
