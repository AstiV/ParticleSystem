class ParticleSystem {
  ArrayList<Particle> particleList;

  ParticleSystem() {
    particleList = new ArrayList<Particle>();
  }

  void addParticle() {
    particleList.add(new Particle());
  }

  void runSystem() {
    for(int i = particleList.size()-1; i >= 0; i--) {
      Particle p = particleList.get(i);
      p.runParticle();
      p.updateParticle();

      if (p.isDead()) {
        particleList.remove(i);
      }
    }
  }

}
