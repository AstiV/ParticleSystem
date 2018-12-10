ParticleSystem ps;

public void settings() {
  size(640, 360);
}

void setup() {
  ps = new ParticleSystem();
}
 
void draw() {
  background(255);
  ps.addParticle();
  ps.runSystem();
}
