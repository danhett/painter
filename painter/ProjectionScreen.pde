/** 
 * PROJECTION SCREEN
 *
 * Projection client that displays edit zones, 
 * designed to be overlaid on physical paintings.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
public class ProjectionScreen extends PApplet {

  public void settings() {
    size(800, 600);
    //fullScreen(1);
  }
  
  public void draw() {
    background(255);
    fill(0);
    ellipse(100, 50, 10, 10);
  }
  
  public void mousePressed() {
    
  }
}