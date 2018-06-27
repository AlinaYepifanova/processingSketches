ArrayList<Particle> particles=new ArrayList<Particle>();
int n=100;
int n2=20;
float k=10;
PVector[][]wind;

void setup()
{
  size(800,800);
  wind=new PVector[height/n2][width/n2];
  for(int i=0;i<n;i++)
  {
     particles.add(new Particle()); 
  }
  for(int i=0;i<height/n2;i++)
  {
     for(int j=0;j<width/n2;j++)
     {
       float angle=noise(i/k,j/k)*4*PI;
       wind[i][j]=new PVector(cos(angle),sin(angle));
       line(j*n2,i*n2,j*n2+wind[i][j].x*5,i*2+wind[i][j].y*5);
     }
  }
}

void draw()
{
  for(Particle particle:particles)
  {
    particle.move();
    particle.display();
  }
}
