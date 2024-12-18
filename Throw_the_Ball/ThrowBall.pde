class ThrowBall {
  PVector pos;

  PVector acc;
  PVector vel;
  PVector force;

  float topspeed;
  float mass;
  float size;

  ThrowBall(float xpos, float ypos, float _size, float _mass) {
    pos = new PVector(xpos, ypos);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    force = new PVector(0, 0);
    size = _size;

    mass = _mass;

    topspeed = 30;
  }

  void update() {
    acc = PVector.div(force, mass);
    vel.add(acc);
    pos.add(vel);


    wallCollition();



    //vel.limit(topspeed);



    display();


    force.mult(0);
  }

  void wallCollition() {
    if (pos.y > height - size / 2) {
      pos.y = height - size / 2;
      vel.y *= -0.9;
    } if ( pos.y < 0 + size / 2) {
      pos.y = 0 + size / 2;
      vel.y *= -0.9;
    }
    if (pos.x > width - size / 2) {
      pos.x = width - size / 2;
      vel.x *= -0.9;
    } if (pos.x < 0 + size / 2) {
      pos.x = 0 + size /2;
      vel.x *= -0.9;
    }
  }

  void addForce(PVector newForce) {
    force.add(newForce);
  }




  void display() {
    noStroke();
    fill(230);
    ellipse(pos.x, pos.y, size, size);
  }
}
