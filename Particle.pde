class Particle {
  PVector pos;
  float radius;
  float phase;
  float strokeWeight;

  Particle(float size, float _strokeWeight) {
    radius = size;
    strokeWeight = _strokeWeight;
    phase = random(0, 1) * PI;
    pos = new PVector(random(0, width), random(0, height));
  }

  void update() {
    pos.x += sin(phase + frameCount / 100);
  }

  void display() {
    strokeWeight(strokeWeight);
    ellipse(pos.x, pos.y, radius, radius);
  }
}
