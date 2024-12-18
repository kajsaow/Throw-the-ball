class Goal {

  PVector pos;
  float xSize;
  float ySize;

  Goal(float xpos, float ypos, float _xSize, float _ySize) {
    pos = new PVector(xpos, ypos);

    xSize = _xSize;
    ySize = _ySize;
  }

  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rectMode(CENTER);
    fill(200, 20, 30);
    rect(0, 0, xSize, ySize);
    popMatrix();
  }
}
