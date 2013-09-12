ArrayList<Particle> particles;

void setup() {
  size(700, 394);
  fill(0);
  strokeWeight(5);
  particles = new ArrayList<Particle>();

  for(int i = 0; i < 100; i++) {
    particles.add(new Particle(random(60), random(20)));
  }
}

void draw() {
  background(255);
  for(int i = 0; i < particles.size(); i++) {
    particles.get(i).update();
    particles.get(i).display();
  }
}

void doSomething() {
  float red = random(0, 255);
  float green = random(0, 255);
  float blue = random(0, 255);
  fill(red, green, blue);
}

void changeSomething(float x, float y) {
  float red = x * 255;
  float green = y * 255;
  float blue = random(0, 255);
  stroke(red, green, blue);
  
  if(y > 0.6 && x > 0.6) {
    particles = new ArrayList<Particle>();
    for(int i = 0; i < random(60); i++) {
      particles.add(new Particle(random(200), random(20)));
    }
  }
}

void mouseMoved() {
  changeSomething(map(mouseX, 0, width, 0, 1), map(mouseY, 0, height, 0, 1));
}

void keyPressed() {
  doSomething();
}
