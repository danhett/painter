/**
 * ProjectionScreen
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
  boolean drawing = false;

  DrawCanvas canvas;
  Reticule reticule;

  /**
   * Sets up the projection screen.
   */
  public void settings()
  {
    size(Config.WIDTH, Config.HEIGHT);

    if(Config.FULLSCREEN)
    {
      fullScreen(1);
    }
  }
  public void setup()
  {
    surface.setTitle("[Projection]");

    canvas = new DrawCanvas();
    reticule = new Reticule();
  }


  /**
   * Draw loop. Called every frame.
   */
  public void draw()
  {
    background(0);

    if(!Config.PERFORMANCE)
    {
      reticule.update(markerX, markerY);
      image(reticule.surface, 0, 0);
    }

    if(drawing)
    {
      canvas.surface.beginDraw();
      canvas.surface.fill(255);
      canvas.surface.noStroke();
      canvas.surface.ellipse(markerX, markerY, 10, 10);
      canvas.surface.endDraw();
    }

    image(canvas.surface, 0, 0);
  }


  /**
   * Actually draws stuff if the user is doing so.
   * Possible edits here if using a touch screen.
   */
  public void drawFromCanvas(float _x, float _y, boolean _drawing)
  {
      markerX = _x;
      markerY = _y;

      drawing = _drawing;
  }
}
