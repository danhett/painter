/** 
 * PROJECTION SCREEN
 *
 * Projection client that displays edit zones, 
 * designed to be overlaid on physical paintings.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ProjectionScreen extends PApplet {

  int markerX = 0;
  int markerY = 0;
  
  public void settings() {
    size(800, 600);
    //fullScreen(1);
  }
  
  public void draw() {
    background(255);
    fill(0);
    ellipse(markerX, markerY, 10, 10);
  }
  
  public void updateMarker(int x, int y)
  {
      markerX = x;
      markerY = y;
  }
}