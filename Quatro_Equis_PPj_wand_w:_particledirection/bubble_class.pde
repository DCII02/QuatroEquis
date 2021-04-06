// Simple Particle System

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  

  Particle(PVector l) {
    acceleration = new PVector(-.1,0); //changes the direction of wand ps
    velocity = new PVector(random(-1,-.001),random(-1,-.001));
    location = l.get();
    lifespan = 150.0;// changes how long each particle is visible
  }
  
  

  void run() {
    update();
    display();
    if (location.x <= 400){
        location.x = 400;
        location.y -= 3;
        
     }
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
  float yAcceleration;
  float lifespan;

 Bubble(PVector l) {
    acceleration = new PVector(.1, -.03); //changes the direction of both wands
    velocity = new PVector(random(1,0),random(0,1));
    location = l.get();
    lifespan = 200.0;// changes how long each particle is visible
  }

  void run() {
    update();
    display();
     if (location.x >= 400){
        location.x = 400;
        location.y -= 3;
        
     }
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
