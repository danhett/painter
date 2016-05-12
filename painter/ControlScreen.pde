/** 
 * CONTROL SCREEN
 *
 * Allows the user to create and edit zones and styles, 
 * which are then mapped to locations on a painting.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class ControlScreen extends PApplet 
{
  boolean enableConsole = false;
  Console console;  
  painter parent; // root
  
  GUIController c;
  IFRadioController rc;
  
  IFRadioButton b1, b2, b3;
  
  public void settings() 
  {
    size(800, 450);
    //fullScreen();
  }
  
  void connect(painter ref)
  {
      parent = ref;
  }
  
  public void setup() 
  {   
    if(enableConsole)
    {
      console = new Console(this);
      console.start(); 
    }
    
    c = new GUIController(this);
    rc = new IFRadioController("Mode Selector");
    
    b1 = new IFRadioButton("Reality Distortion Field", 20, 20, rc);
    b2 = new IFRadioButton("Infinite Improbability Drive", 20, 40, rc);
    b3 = new IFRadioButton("Bistromathic Drive", 20, 60, rc);
    
    c.add(b1);
    c.add(b2);
    c.add(b3);
  }
  
  public void draw() 
  {
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