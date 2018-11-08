import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class particleSystem extends PApplet {

class ParticleSystem {
  ArrayList<Particle> particleList;

  ParticleSystem() {
    particleList = new ArrayList<Particle>();
  }

  public void addParticle() {
    particleList.add(new Particle());
  }

  public void runSystem() {
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
class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
 
  Particle() {
    location = new PVector(width/2,50);
    acceleration = new PVector(0, 0.05f);
    velocity = new PVector(random(-1, 1), random(-1,0));
    lifespan = 255;
  }

  public void runParticle() {
    updateParticle();
    display();
  }
 
  public void updateParticle() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0f;
  }
 
  public void display() {
    // lifespan ranges from 0-255 => Can be used for alpha
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(location.x,location.y,8,8);
  }

  public boolean isDead() {
    if (lifespan < 0.0f) {
      return true;
    } else {
      return false;
    }
  }
}
ParticleSystem ps;

public void settings() {
  size(640, 360);
}

public void setup() {
  ps = new ParticleSystem();
}
 
public void draw() {
  background(255);
  ps.addParticle();
  ps.runSystem();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "particleSystem" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
