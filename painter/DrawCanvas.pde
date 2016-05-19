/**
 * DrawCanvas
 *
 * A single instance of drawble canvas element, allowing
 * many styles and interchangable effects to be created
 * by the UI, and controlled individually.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com)
 */
class DrawCanvas
{
  public PGraphics surface;

  DrawCanvas()
  {
    surface = createGraphics(800, 600);
  }
}
