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
InteractionCanvas interaction;

GUIController c;
IFRadioController rc;
IFRadioButton b1, b2, b3;
 
void setup() 
{  
  size(640, 480, P2D);
      
  surface.setTitle("[Painter]");
      
  spawnProjectionScreen();
  spawnDrawingSurface();
  
  createControls();
}

void draw() 
{
  background(100);
  surface.setSize(640, 480);
}

// Create the projection surface used to map onto
void spawnProjectionScreen()
{
  String[] args = {"Projection"};
  projection = new ProjectionScreen();
  PApplet.runSketch(args, projection);
}

// Create the surface we'll use to draw elements
void spawnDrawingSurface()
{
  String[] args = {"Interaction"};
  interaction = new InteractionCanvas();
  PApplet.runSketch(args, interaction);
  
  interaction.connect(this);
}

// Create the on-screen controls
void createControls() 
{
  c = new GUIController(this);
  rc = new IFRadioController("Mode Selector");
  
  b1 = new IFRadioButton("Texture", 20, 20, rc);
  b2 = new IFRadioButton("Intensity", 20, 40, rc);
  b3 = new IFRadioButton("Color shift", 20, 60, rc);
  
  c.add(b1);
  c.add(b2);
  c.add(b3);
}

void setPosition(int x, int y, boolean drawing)
{
  projection.drawFromCanvas(x, y, drawing);
}