class Particle
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  color c;
  
  Particle()
  {
     position=new PVector(random(width), random(height));
     velocity= PVector.random2D();
     acceleration=PVector.random2D();
     c=color(72, 61, 139);
  }
  
  void move()
  {
     position.add(velocity);
     if(position.x>width)position.x=0;
     if(position.x<0)position.x=width;
     if(position.y>height)position.y=0;
     if(position.y<0)position.y=height;
  }
  
  void display()
  {
     stroke(c);
     point(position.x,position.y);
  }
}
