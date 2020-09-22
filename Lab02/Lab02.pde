Flock flock;
Boid B;
void setup() {
  size(640, 360);
  flock = new Flock();
  B = new Boid();
  // Add an initial set of boids into the system
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
}

void draw() {
  background(50);
  if(flock.portal_display){
  
    flock.display();
  }
  flock.run();
  
}

// Add a new boid into the System
void mousePressed() {
  B.new_boids = !B.new_boids;
  flock.addBoid(new Boid(mouseX, mouseY));
}

void keyReleased()
{
  if(key == ' ')
  {
    flock.portal_display = !flock.portal_display;
    flock.setPortal();
  }
  
  if(key == 'r')
  {
    setup();
  }
}
