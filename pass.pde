class pass {
  float x;
  float y;
  float z;
  float a;
  ArrayList<PVector> history;
  float c1;

  pass(float x, float y, float z, float a) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.a = a;
    this.history = new ArrayList<PVector>();
    c1 = random(256);
  }

  void show() {
    stroke(c1);
    line(x, y, z, a);
  }
   
}