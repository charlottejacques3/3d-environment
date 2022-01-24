//regular textured cube
void texturedCube(float x, float y, float z, PImage img, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  noStroke();
  beginShape(QUADS);
  texture(img);

  //cube's x, y, z, texture's x, y
  //go around clockwise
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //right
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);

  endShape();
  popMatrix();
}

//textured cube with different faces
void texturedCube(float x, float y, float z, PImage top, PImage side, PImage bottom, float size) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  noStroke();
  
  //top
  beginShape(QUADS);
  texture(top);
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  endShape();
  
  //bottom
  beginShape(QUADS);
  texture(bottom);
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  endShape();
  
  //sides
  beginShape(QUADS);
  texture(side);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);
  //left
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);
  //right
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);
  endShape();
  
  popMatrix();
}
