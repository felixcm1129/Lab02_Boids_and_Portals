class Portal {

  float x;
  float y;
  float w = 50;
  float h = 50;
  float radius = w/2;
  Portal p1;
  Portal p2;
  
  Portal(float _x, float _y)
  {
    x = _x;
    y = _y;
    ellipse(x, y, w, h);
  }
 
  void display(){
    ellipse(x, y, w, h);
  }
  
  void setPortal1(Portal _p)
  {
    p1 = _p;
  }
  
  void setPortal2(Portal _p)
  {
    p2 = _p;
  }
  
  Portal getP1(){
    return p1;
  }
  
  Portal getP2(){
    return p2;
  }
  
}
