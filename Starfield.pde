NormalParticle[] particles;

void setup()
{
  size(600,600);
  background(0);
  particles = new NormalParticle[500];
        for(int i = 0; i < particles.length; i++){
            particles[i] = new NormalParticle();
        }


}
void draw()
{
  for(int i = 0; i < array.length; i++){
      particles[i].show();
      particles[i].move();
  }
}
class NormalParticle
{
  double myX,myY,myAngle,mySpeed;
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
