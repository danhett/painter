/** 
 * PROJECTION SCREEN
 *
 * Projection client that displays edit zones, 
 * designed to be overlaid on physical paintings.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ProjectionScreen extends PApplet 
{
  float markerX = 0;
  float markerY = 0;
  float spin = 0;
  float r = 2000;
  
  public void settings() 
  {
    size(1600, 900);
    //fullScreen(1);
  }
  
  public void draw() 
  {
    background(0);
    
    noFill();
    stroke(255);
    
    ellipse(markerX, markerY, 30, 30);
    translate(markerX, markerY);
    
    pushMatrix();
    spin += 0.01;
    rotate(spin);
    line(-r, -r, r, r);
    line(-r, 0, r, 0);
    line(-r, r, r, -r);
    line(0, -r, 0, r);
    popMatrix();
  }
  
  public void updateMarker(float x, float y)
  {
      markerX = x * 2;
      markerY = y * 2;
  }
}