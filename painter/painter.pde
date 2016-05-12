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

import at.mukprojects.console.*;
import interfascia.*;
 
ProjectionScreen projection;
ControlScreen controls;
 
void setup() {  
  size(200, 200, P2D);
    
  frameRate(30);
  
  spawnProjectionScreen();
  spawnControlScreen();
}

// Create the projection surface used to map onto
void spawnProjectionScreen()
{
  String[] args = {"Projection"};
  projection = new ProjectionScreen();
  PApplet.runSketch(args, projection);
}

// Create the controls
void spawnControlScreen()
{
  String[] args = {"Controls"};
  controls = new ControlScreen();
  PApplet.runSketch(args, controls);
  
  controls.connect(this);
}

void setPosition(int x, int y)
{
  projection.updateMarker(x, y);
}