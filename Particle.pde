class Particle {
  float x;
  float y;
  ArrayList<PVector> history;
  float c1; float c2; float c3;

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.history = new ArrayList<PVector>();
    c1 = random(256); c2 = random(256); c3 = random(256);
  }

  void show() {
    stroke(c1, c2, c3);
    fill(c1, c2, c3);
    ellipse(this.x, this.y, 15, 15);
  }
   
}