class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
 
  Particle() {
    // Here, particles are all initialized at SAME LOCATION! That's why they all start at one point!
    location = new PVector(width/2,50);
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-1,0));
    lifespan = 255;
  }

  void runParticle() {
    updateParticle();
    display();
  }
 
  void updateParticle() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }
 
  void display() {
    // lifespan ranges from 0-255 => Can be used for alpha
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(location.x,location.y,8,8);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
