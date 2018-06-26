ArrayList<Particle> particles=new ArrayList<Particle>();
int n=100;

void setup()
{
  size(800,800);
  for(int i=0;i<n;i++)
  {
     particles.add(new Particle()); 
  }
  background(255);
}

void draw()
{
  for(Particle particle:particles)
  {
    particle.move();
    particle.display();
  }
}
