/**
 * Reticule
 *
 * A large spinning reticule that allows a user to
 * locate and track the mouse cursor on a projection-
 * mapped surface. Disabled when not building.
 *
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com)
 */
class Reticule
{
  public PGraphics surface;
  float spin = 0;
  float r = 2000;

  Reticule()
  {
    surface = createGraphics(800, 600);
  }

  public void update(float xPos, float yPos)
  {
    surface.beginDraw();
    surface.background(0);
    surface.noFill();
    surface.stroke(255);

    surface.ellipse(xPos, yPos, 30, 30);
    surface.translate(xPos, yPos);
    surface.pushMatrix();
    spin += 0.01;
    surface.rotate(spin);
    surface.line(-r, -r, r, r);
    surface.line(-r, 0, r, 0);
    surface.line(-r, r, r, -r);
    surface.line(0, -r, 0, r);
    surface.popMatrix();
    surface.endDraw();
  }
}
