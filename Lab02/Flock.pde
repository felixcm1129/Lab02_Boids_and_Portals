class Flock {
  ArrayList<Boid> boids; // An ArrayList for all the boids
  Boolean portal_display = false;
  Boolean colliding = false;
  Portal p1;
  Portal p2;
  
  Flock() {
    boids = new ArrayList<Boid>(); // Initialize the ArrayList
    
  }

  void run() {
    for (Boid b : boids) {
      b.run(boids);  // Passing the entire list of boids to each boid individually
      if(portal_display){
        
          //pour portail 1 vers portail 2
          float d = sqrt(sq(b.position.x - p1.x) + sq(b.position.y - p1.y));
          if(d <= 25){
            b.position.x = p2.x;
            b.position.y = p2.y;
          }
          
          /*//pour portail 2 vers portail 1
          float d2 = sqrt(sq(b.position.x - p2.x) + sq(b.position.y - p2.y));
          if(d2 <= 25){
            b.position.x = p1.x;
            b.position.y = p1.y;
          }*/
          
          /*The distance between <xc,yc> and <xp,yp> is given by the Pythagorean theorem as 
                                  d= sqrt(sq(xp−xc) + sq(yp−yc))
            The point <xp,yp> is inside the circle if d<r, on the circle if d=r, and outside the circle if d>r.
            You can save yourself a little work by comparing d2 with r2 instead: the point is inside the circle if d2<r2, 
            on the circle if d2=r2, and outside the circle if d2>r2. Thus, you want to compare the number 
            (xp−xc)2+(yp−yc)2 with r2.
            
            https://math.stackexchange.com/questions/198764/how-to-know-if-a-point-is-inside-a-circle
          */
         
          
        } 
      }
    }
  
  void addBoid(Boid b) {
    boids.add(b);
  }
  
  void setPortal(){

    p1 = new Portal(random(0, width), random(0, height));
    p2 = new Portal(random(0, width), random(0, height));
    
    if(PortalColliding() == true){
      println("collision");
      p2 = new Portal(random(0, width), random(0, height));
      colliding = false;
    }
  }
  
  Boolean PortalColliding(){
  
    float aB = sqrt(sq(p2.x - p1.x) + sq(p2.y - p1.y));
    float rAB = 50;
    if(aB <= rAB)
    {
      return colliding = true;
    }  else return colliding = false;
  
  }
  
  void display()
  {
    fill(255, 0, 0, 100);
    p1.display();
    fill(0, 0, 255, 100);
    p2.display();
  }

}
