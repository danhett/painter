/** 
 * CONTROL SCREEN
 *
 * Allows the user to create and edit zones and styles, 
 * which are then mapped to locations on a painting.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
public class ControlScreen extends PApplet {

  painter parent; // root
  
  public void settings() {
    size(800, 600);
  }
  
  void connect(painter ref)
  {
      parent = ref;
      parent.setPosition("hey");
  }
  
  public void draw() {
    background(255, 0, 0);
    fill(0);
    ellipse(100, 50, 10, 10);
  }
}