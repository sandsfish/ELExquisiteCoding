class Particle {
  PVector pos;
  float radius;
  float phase;

  Particle() {
    radius = 30;
    phase = random(0, 1) * PI;
    pos = new PVector(random(0, width), random(0, height));
  }

  void update() {
    pos.x += sin(phase + frameCount / 100);
  }

  void display() {
    ellipse(pos.x, pos.y, 20, 20);
  }
}
