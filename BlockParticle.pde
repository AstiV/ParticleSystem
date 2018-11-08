class BlockParticle extends Particle {

    void display() {
        fill(175, lifespan);
        rect(location.x,location.y,8);
    }
}
