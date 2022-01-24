void drawFloor(int y) {
  stroke(255);
  for (int x = -2000; x <= 900; x+=gridSize) {
    for (int z = -2000; z <= 900; z+=gridSize) {
      texturedCube(x, y, z, oakLogSide, gridSize);
    }
    //line(x, y, -2000, x, y, 2000);
    //line(-2000, y, x, 2000, y, x);
  }
}

//--------------------------------------------------------------------------------------

void drawMap() {
  for (int x = 0; x < map.width; x++) {
    for (int y = 0; y < map.height; y++) {
      color c = map.get(x, y);
      //texturedCube(x, y, z, texture, size);
      for (int i = 1; i < height/gridSize + 1; i++) {
        if (c == black) texturedCube(x*gridSize-2000, height-gridSize*i, y*gridSize-2000, oakLeaves, gridSize);
        else if (c == maroon) texturedCube(x*gridSize-2000, height-gridSize*i, y*gridSize-2000, stoneBricks, gridSize);
        else if (c == navy) texturedCube(x*gridSize-2000, height-gridSize*i, y*gridSize-2000, netherPortal, gridSize);
        else if (c == teal) texturedCube(x*gridSize-2000, height-gridSize*i, y*gridSize-2000, darkPrismarine, gridSize);
      }
      //OLD STUFF:
      //if (c != white) {
      //  pushMatrix();
      //  fill(c);
      //  stroke(100);
      //  translate(x*gridSize-2000, height/2, y*gridSize-2000);
      //  box(gridSize, height, gridSize);
      //  popMatrix();
      //}
    }
  }
}
