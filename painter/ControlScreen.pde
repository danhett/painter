/** 
 * CONTROL SCREEN
 *
 * Allows the user to create and edit zones and styles, 
 * which are then mapped to locations on a painting.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ControlScreen extends PApplet {

  boolean enableConsole = false;
  Console console;  
  painter parent; // root
  
  public void settings() {
    size(800, 450);
    //fullScreen();
  }
  
  void connect(painter ref)
  {
      parent = ref;
  }
  
  public void setup() {
    
    if(enableConsole)
    {
      console = new Console(this);
      console.start(); 
    }
  }
  
  public void draw() {
    background(255);
    ellipse(mouseX, mouseY, 20, 20);
    
    parent.setPosition(mouseX, mouseY);
    
    if(enableConsole)
    {
      console.draw();
      console.print(); 
    }
  }
}