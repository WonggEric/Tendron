class Tendron {
  private float x, y, angle;
  private int numSegments;

  Tendron(float x, float y, float angle, int numSegments) {
    setX(x);
    setY(y);
    setAngle(angle);
    setNumSegments(numSegments);
  }

  public float getX() { return x; }
  public float getY() { return y; }
  public float getAngle() { return angle; }
  public int getNumSegments() { return numSegments; }

  public void setX(float x) { this.x = x; }
  public void setY(float y) { this.y = y; }
  public void setAngle(float angle) { this.angle = angle; }
  public void setNumSegments(int numSegments) { 
    this.numSegments = (numSegments > 0) ? numSegments : 1; 
  }

  public void show() {
    strokeWeight(1.5);
    stroke(255);

    float startX = getX();
    float startY = getY();
    float currentAngle = getAngle();

    for (int i = 0; i < getNumSegments(); i++) {
      currentAngle += random(-0.2, 0.2);
      float endX = startX + cos(currentAngle) * segmentLength;
      float endY = startY + sin(currentAngle) * segmentLength;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }

    if (getNumSegments() >= 4) {
      Cluster cluster = new Cluster(startX, startY, getNumSegments() / 2);
      cluster.show();
    }
  }
}
