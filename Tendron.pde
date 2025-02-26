private int TendronLength = 1;

private float segmentLength = 8;

private int numSegments = 30;

private boolean move = true;

public void setup() {
  size(1000, 1000);
  background(0);
  Cluster cluster = new Cluster(500, 500, numSegments);
  cluster.show();
}

public void draw() {
  if (move) {
    background(0);
    Cluster cluster = new Cluster(500, 500, numSegments);
    cluster.show();
    move = false;
  }
}

public void mousePressed() {
  if (mouseButton == LEFT) {
    move = true;
  }
}

