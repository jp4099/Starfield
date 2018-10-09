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
  for(int i = 0; i < particles.length; i++){
      particles[i].show();
      particles[i].move();
  }
}
class NormalParticle
{
  double myX,myY,myAngle,mySpeed;
  double myX = myY = 30;
  double myAngle = 
  double mySpeed = 5;
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle(){
{
  public void show(){
    //lots more java
  }
  public void move(){
    //lots more java
  }

}
class JumboParticle extends NormalParticle(){
{
  public void show()
  {

  }
}
