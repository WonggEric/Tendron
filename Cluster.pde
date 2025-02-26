public class Cluster {
  private float myX, myY;
  private int myNumSegments;

  public Cluster(float x, float y, int numSegments) {
    myX = x;
    myY = y;
    myNumSegments = numSegments;
  }

  public void show() {
    for (int i = 0; i < 5; i++) {
      float angle = i * 2 * PI / 5;
      Tendron Tendron = new Tendron(myX, myY, angle, myNumSegments);
      Tendron.show();
    }
  }
}
