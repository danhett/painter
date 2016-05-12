/** 
 * CONTROL SCREEN
 *
 * Allows the user to create and edit zones and styles, 
 * which are then mapped to locations on a painting.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ControlScreen extends PApplet {

  painter parent; // root
  
  public void settings() {
    size(800, 600);
  }
  
  void connect(painter ref)
  {
      parent = ref;
  }
  
  public void draw() {
    background(255, 0, 0);
    ellipse(mouseX, mouseY, 10, 10);
    parent.setPosition(mouseX, mouseY);
  }
}