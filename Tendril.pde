public class Tendron {
  private float myX, myY;
  private float myAngle;
  private int myNumSegments;

  public Tendron(float x, float y, float angle, int numSegments) {
    myX = x;
    myY = y;
    myAngle = angle;
    myNumSegments = numSegments;
  }

  public void show() {
    strokeWeight(1.5);
    stroke(255);

    float startX = myX;
    float startY = myY;

    for (int i = 0; i < myNumSegments; i++) {
      myAngle += random(-0.2, 0.2);

      float endX = startX + cos(myAngle) * segmentLength;
      float endY = startY + sin(myAngle) * segmentLength;

      line(startX, startY, endX, endY);

      startX = endX;
      startY = endY;
    }

    if (myNumSegments >= TendronLength) {
      Cluster cluster = new Cluster(startX, startY, myNumSegments / 2);
      cluster.show();
    }
  }
}
