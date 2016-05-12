/** 
 * PROJECTION SCREEN
 *
 * Projection client that displays edit zones, 
 * designed to be overlaid on physical paintings.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ProjectionScreen extends PApplet {

  float markerX = 0;
  float markerY = 0;
  int r = 0;
  
  public void settings() {
    size(800, 450);
    //fullScreen(1);
  }
  
  public void draw() {
    background(0);
    
    fill(255);
    stroke(255);
    
    ellipse(markerX, markerY, 5, 5);
    translate(markerX, markerY);
    
    pushMatrix();
    rotate(millis()/25);
    line(-1000, -1000, 1000, 1000);
    line(-1000, 1000, 1000, -1000);
    popMatrix();
  }
  
  public void updateMarker(float x, float y)
  {
      markerX = x;
      markerY = y;
  }
}