/*3d programming environments - new version

PROBLEMS:
- mouse wrap-around doesn't work on the left side
- floor gets drawn bigger than the room on two corners
*/


//interaction variables
boolean wKey, aKey, sKey, dKey;
import java.awt.Robot;
Robot robot;
boolean skipFrame = false;

//camera variables
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightAngle, upDownAngle;

//map variables
color white = #FFFFFF; //nothing built
color black = #000000; //oak leaves
color maroon = #5E241B; //stone bricks
color navy = #0B0A38; //nether portal
color teal = #1B3C5E; //dark prismarine
int gridSize = 100;
PImage map;

//texture variables
PImage cryingObsidian, netherPortal, oakLeaves, darkPrismarine, stoneBricks, oakLogSide;

void setup() {
  size(displayWidth, displayHeight, P3D);
  textureMode(NORMAL);
  wKey = aKey = sKey = dKey = false;

  //camera variables
  eyeX = width/2;
  eyeY = 4*height/5;
  eyeZ = width/2;
  focusX = width/2;
  focusY = height/2;
  focusZ = 10;
  tiltX = 0;
  tiltY = 1;
  tiltZ = 0;
  leftRightAngle = radians(270);
  
  //map variables 
  map = loadImage("updated map.png");
  
  //texture variables
  textureMode(NORMAL);
  cryingObsidian = loadImage("crying obsidian.png");
  netherPortal = loadImage("nether portal.png");
  oakLeaves = loadImage("oak leaves.png");
  darkPrismarine = loadImage("dark prismarine.png");
  stoneBricks = loadImage("stone bricks.png");
  oakLogSide = loadImage("oak log side.png");
  
  //robot variables
  try {
    robot = new Robot();
  } //if "try" causes an error, do this "catch" instead
  catch (Exception e) {
    e.printStackTrace();
  }
}

void draw() {
  background(0);
  lights();
  noCursor();
  
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor(height); //floor
  drawFloor(0); //ceiling
  drawFocalPoint();
  controlCamera();
  
  drawMap();
}
