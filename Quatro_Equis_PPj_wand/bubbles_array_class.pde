// Using Generics now!  comment and annotate, etc.

class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    particles.add(new Particle(origin));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

// Using Generics now!  comment and annotate, etc.

class BubbleSystem {
  ArrayList<Bubble> Bubbles;
  PVector origin;

  BubbleSystem(PVector location) {
    origin = location.get();
    Bubbles = new ArrayList<Bubble>();
  }

  void addParticle() {
   Bubbles.add(new Bubble(origin));
  }

  void run() {
    for (int i = Bubbles.size()-1; i >= 0; i--) {
      Bubble q = Bubbles.get(i);
      q.run();
      if (q.isDead()) {
       Bubbles.remove(i);
      }
    }
  }
}
