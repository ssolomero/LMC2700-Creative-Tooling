class shoot {
  float x;
  float y;
  float z;
  float a;
  float b;
  float c;
  float s;
  float ran;
  ArrayList<PVector> history;
  

  shoot(float x, float y, float z, float a, float b, float c) {
    s = x;
    this.x = x+(910-x)/2;
    this.y = y;
    this.z = z;
    this.a = a;
    this.b = b;
    this.c = c;
    ran = random(10);
    this.history = new ArrayList<PVector>();
  }

  void show() {
    stroke(random(256), random(256), random(256));
    arc(x, y, z, a, b, c); 
    
      if (ran < 5) {
       stroke(0, 128, 0);
       ellipse(s, y, 30, 30);
     } else if (ran >= 5) {
       stroke(255, 0, 0);
       line(s-8, y+8, s+8, y-8);
       line(s+8, y+8, s-8, y-8);
     }
  }
   
}