class BlockParticle extends Particle {

    void display() {
        stroke(0, lifespan);
        fill(0, lifespan);
        rect(location.x,location.y,8.0,5.0);
    }
}
