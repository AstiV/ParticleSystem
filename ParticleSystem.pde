class ParticleSystem {
  ArrayList<Particle> particles;

  // constructor
  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add( new Particle());
  }

  void runSystem() {
    for (int i = particles.size()-1; i >= 0, i--) {
      Particle p = particles.get(i);
      p.runParticle();
      
      if p(isDead()) {
        particles.remove(i)
      }
    }
  }
}
