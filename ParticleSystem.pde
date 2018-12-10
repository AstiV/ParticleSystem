class ParticleSystem {
  ArrayList<Particle> particles;
  ArrayList<BlockParticle> blockParticles;

  // constructor
  ParticleSystem() {
    particles = new ArrayList<Particle>();
    blockParticles = new ArrayList<BlockParticle>();
  }

  void addParticle() {
    particles.add( new Particle());
    blockParticles.add(new BlockParticle());
  }

  void runSystem() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.runParticle();
      
      if (p.isDead()) {
        particles.remove(i);
      }
    }
    for (int j = blockParticles.size()-1; j >=0; j--) {
      BlockParticle b = blockParticles.get(j);
      b.runParticle();
    }
  }
}
