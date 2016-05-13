/** 
 * INTERACTION CANVAS
 *
 * Allows the user to create and edit zones and styles, 
 * which are then mapped to locations on a painting.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
class InteractionCanvas extends PApplet 
{
  boolean enableConsole = false;
  Console console;  
  Painter parent; // root
  
  public void setup() 
  {   
    surface.setTitle("[Interaction Canvas]");
    
    if(enableConsole)
    {
      console = new Console(this);
      console.start(); 
    }
  }
  
  public void settings() 
  {
    size(800, 450);
    //fullScreen();
  }
  
  void connect(Painter ref)
  {
      parent = ref;
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