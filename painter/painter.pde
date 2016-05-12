/** 
 * PAINTER
 *
 * Designed to enhance live paintings with animated or stylised zones.
 * Runs on two screens, designed for machine and projector.
 *
 * Built for the BBC's Digital Arts Connected Studio event, Cardiff 2016
 * 
 * @author Dan Hett / RITUALS (hellodanhett@gmail.com) 
 */
void setup() {  
  spawnProjectionScreen();
  spawnControlScreen();
}

// Create the projection surface used to map onto
void spawnProjectionScreen()
{
  String[] args = {"Projection"};
  ProjectionScreen sa = new ProjectionScreen();
  PApplet.runSketch(args, sa);
}

// Create the controls
void spawnControlScreen()
{
  String[] args = {"Controls"};
  ControlScreen sa = new ControlScreen();
  PApplet.runSketch(args, sa);
  
  sa.connect(this);
}

void setPosition(String msg) 
{
  println(msg);
}