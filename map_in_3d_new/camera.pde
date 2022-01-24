void drawFocalPoint() {
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(5);
  popMatrix();
}

//--------------------------------------------------------------------------------------

void controlCamera() {
  //eye: where the camera is
  //focus: the point where the camera is looking
  //tilt: turning camera angle side to side while in the same place

  //control eye and movement
  if (wKey) {
    eyeX += cos(leftRightAngle)*10;
    eyeZ += sin(leftRightAngle)*10;
  }
  if (sKey) {
    eyeX -= cos(leftRightAngle)*10;
    eyeZ -= sin(leftRightAngle)*10;
  }
  if (dKey) {
    eyeX += cos(leftRightAngle + PI/2)*10;
    eyeZ += sin(leftRightAngle + PI/2)*10;
  }
  if (aKey) {
    eyeX -= cos(leftRightAngle + PI/2)*10;
    eyeZ -= sin(leftRightAngle + PI/2)*10;
  }

  //control focus
  if (skipFrame == false) {
    leftRightAngle += (mouseX - pmouseX)*0.005;
    upDownAngle += (mouseY - pmouseY)*0.005;
  }
  focusX = eyeX + cos(leftRightAngle)*300;
  focusZ = eyeZ + sin(leftRightAngle)*300;
  if (upDownAngle > PI/2.5) upDownAngle = PI/2.5;
  if (upDownAngle < -PI/2.5) upDownAngle = -PI/2.5;
  focusY = tan(upDownAngle)*300;

  if (mouseX > width-2) {
    robot.mouseMove(2, mouseY);
    skipFrame = true;
  } else if (mouseX < 2) {
    robot.mouseMove(width-2, mouseY);
    skipFrame = true;
  } else skipFrame = false;
}
