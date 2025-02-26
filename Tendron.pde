public final static int TendronLength = 1;
public final static float segmentLength = 8;
public final static int numSegments = 30;
public final static boolean move = true;

public void setup() {
  size(1000, 1000);
  background(0);
  Cluster cluster = new Cluster(width / 2, height / 2, numSegments);
  cluster.show();
}

public void draw() {
  if (move) {
    background(0);
    Cluster cluster = new Cluster(width / 2, height / 2, numSegments);
    cluster.show();
    move = false;
  }
}

public void mousePressed() {
  if (mouseButton == LEFT) {
    move = true;
  }
}
