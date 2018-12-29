class Snow {
  float rx; //snow x position
  float ry; // snow y position
  float rz;  // snow size
  float rspeed;  // snow speed when falling

  Snow() {
    rx  = random(-10,width);
    ry  = random(-100,0);
    rz  = random(10, 40);
    rspeed  =random(1,8);
  }

  void falling() {
    ry = ry + rspeed;

    if (ry > height) {
      ry = random(-100, 0);
      rspeed = random(1,8);
    }
  }

  void snow() {
    stroke(200);
    fill(255);
ellipse(rx, ry, rz, rz);
  }
}
