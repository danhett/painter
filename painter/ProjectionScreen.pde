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
  DrawCanvas canvas;
  boolean drawing = false;
  
  /**
   * Sets up the projection screen.
   */
  public void settings() 
  {
    size(800, 450);
    //fullScreen(1);
  }
  public void setup()
  {
    surface.setTitle("[Projection]");
    
    canvas = new DrawCanvas();
  }
  
  
  /**
   * Draw loop. Called every frame.
   */
  public void draw() 
  {    
    background(0);
    
    if(drawing)
    {
      canvas.surface.beginDraw();
      canvas.surface.fill(255);
      canvas.surface.noStroke();
      canvas.surface.ellipse(markerX, markerY, 10, 10); 
      canvas.surface.endDraw(); 
    }
    
    image(canvas.surface, 0, 0);
    
    drawDebugTarget();
  }
  
  
  /**
   * Draws a targeting reticule around the user's input
   * point. Hard to find otherwise when projection-mapping.
   */
  public void drawDebugTarget()
  {
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