/**
 * InteractionCanvas
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
  Painter parent;
  boolean drawing = false;

  /**
   * Sets up the interaction canvas.
   */
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

  /**
   * Gets a reference to the base class. Quick and dirty!
   */
  void connect(Painter ref)
  {
      parent = ref;
  }
  
  /**
   * Draw loop. Called every frame.
   */
  public void draw()
  {
    background(255);
    ellipse(mouseX, mouseY, 20, 20);

    parent.setPosition(mouseX, mouseY, drawing);

    if(enableConsole)
    {
      console.draw();
      console.print();
    }
  }

  public void mousePressed()
  {
    drawing = true;
  }

  public void mouseReleased()
  {
    drawing = false;
  }
}
