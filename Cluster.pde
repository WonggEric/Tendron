class Cluster {
  private float x, y;
  private int numSegments;

  Cluster(float x, float y, int numSegments) {
    setX(x);
    setY(y);
    setNumSegments(numSegments);
  }

  public float getX() { return x; }
  public float getY() { return y; }
  public int getNumSegments() { return numSegments; }

  public void setX(float x) { this.x = x; }
  public void setY(float y) { this.y = y; }
  public void setNumSegments(int numSegments) { 
    this.numSegments = (numSegments > 0) ? numSegments : 1; 
  }

  public void show() {
    for (int i = 0; i < 5; i++) {
      float angle = i * TWO_PI / 5;
      Tendron tendron = new Tendron(getX(), getY(), angle, getNumSegments());
      tendron.show();
    }
  }
}
