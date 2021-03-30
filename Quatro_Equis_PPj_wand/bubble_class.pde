// Simple Particle System

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Particle(PVector l) {
    acceleration = new PVector(-.1,-0.05); //changes the direction of wand ps
    velocity = new PVector(random(-.01,-.001),random(-.2,-.001));
    location = l.get();
    lifespan = 150.0;// changes how long each particle is visible
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  // Method to display
  void display() {
    stroke(0,lifespan);
    strokeWeight(2);
    fill(127,lifespan);
    ellipse(location.x,location.y,12,12);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}



// Simple Particle System 2: this is wand qc

class Bubble {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;

 Bubble(PVector l) {
    acceleration = new PVector(1,0.05); //changes the direction of both wands
    velocity = new PVector(random(-1,1),random(-2,0));
    location = l.get();
    lifespan = 150.0;// changes how long each particle is visible
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
  }

  // Method to display
  void display() {
    stroke(0,lifespan);
    strokeWeight(2);
    fill(127,lifespan);
    ellipse(location.x,location.y,12,12);
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
