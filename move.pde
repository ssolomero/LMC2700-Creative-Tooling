float ballX = 250;
float ballY = 250;
float speed = 7;
ArrayList<Particle> particles = new ArrayList<Particle>();
ArrayList<pass> pa = new ArrayList<pass>();
ArrayList<shoot> sh = new ArrayList<shoot>();
float circleX;
float circleY;
float xspeed = random(-2, 2);
float yspeed = random(-2, 2);

void setup(){
 size(940, 1000); 
 background(255,222,173);
 
  circleX = 0; 
  circleY = 0;
}

void draw(){
  background(255,222, 173);
  stroke(0);
  ellipse(ballX, ballY, 25, 25);
  strokeWeight(15);
  
  //basket
  stroke(255);
  strokeWeight(5);
  noFill();
  ellipse(910, 500, 60, 60);
  
  //Paint
  line(940, 380, 640, 380);
  line(940, 620, 640, 620);
  line(640, 380, 640, 620); 
  noFill();
  arc(640, 500, 200, 240, PI/2, 3*PI/2 );
  
  //three
  line(940, 940, 660, 940);
  line(940, 60, 660, 60);
  noFill();
  arc(660, 500, 580, 880, PI/2, 3*PI/2); 
  
  //basket
  stroke(255);
  strokeWeight(5);
  ellipse(910, 500, 60, 60);
  
  //Dribble
  for (int i = 0; i < particles.size(); i++) {
    if (i % 10 == 0) {
      particles.get(i).show();
     }
  }
  
  //Random player
  stroke(0);
  noFill();
  ellipse (circleX, circleY, 25, 25);   
  circleX = circleX + xspeed;    
  circleY = circleY + yspeed; 
  
  if (circleX > width) {   
    xspeed = -2 ;       
  }
  if (circleX < 0){  
    xspeed = 2;
  }    
  if (circleY > height) { 
    yspeed = -2;
  }   
  if (circleY < 0) {  
    yspeed = 2;
  }   
  
  //pass
  for (int i = 0; i < pa.size(); i++) {
     pa.get(i).show();
  }
  //shoot
  for (int i = 0; i < sh.size(); i++) {
     sh.get(i).show();
  }
}

void keyPressed(KeyEvent e){
    particles.add(new Particle(ballX, ballY));
   
    if(keyCode == UP){
    ballY -= speed;
    }
    else if(keyCode == DOWN){
    ballY += speed; 
    }
    else if(keyCode == LEFT){
    ballX -= speed;
    }
    else if(keyCode == RIGHT){
    ballX += speed;
    }
    else if (key == ' ') {
      pa.add(new pass(ballX, ballY, circleX, circleY));
      delay(500);
    }
    else if (keyCode == SHIFT) {
      sh.add(new shoot(ballX, ballY, 910-ballX, 400, PI, PI+PI/2));
      delay(500);
    }
}
    
  
  
  