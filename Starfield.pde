Particle [] tae = new Particle[5000];

void setup()
{
background(0);
  size(500,500);
  for (int i = 0; i < tae.length; i++)
  {
  tae[i] = new NormalParticle();

  }
  tae[0] = new OddballParticle();
  tae[1] = new JumboParticle();
}
void draw()
{
background(0);
  for (int i = 0; i < tae.length;i++)
  {
    tae[i].show();
    tae[i].move();
}
}
class NormalParticle implements Particle
{
  double myX, myY, myDir, mySpeed;
  int myG, myR,myB;
  NormalParticle()
  {
    myX = 250;
    myY = 250;
    myDir = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5+1;
    myR = (int)(Math.random() * 50) + 250;
    myG = (int)(Math.random() * 100) + 220;
    myB = (int)(Math.random() * 20) + 200;
  }

  public void show()
  {
   noStroke();
   fill(myR,myG,myB);
   ellipse((float)myX,(float)myY, 7,7);
  }
  public void move()
  {
    myX = myX + Math.cos(myDir)*mySpeed;
    myY = myY + Math.sin(myDir)*mySpeed;
  }
}

interface Particle
{
public void move();
  public void show();
  
}
void mouseClicked()
{
  for (int i = 0; i < tae.length; i++)
  {
  tae[i] = new NormalParticle();

  }
  tae[0] = new OddballParticle();
  tae[1] = new JumboParticle();
}
class OddballParticle implements Particle
{

  double myX, myY, myDir, mySpeed;
  int myG, myR,myB;
  OddballParticle()
  {
    myX = 250;
    myY = 250;
    myDir = Math.random()*2*Math.PI;
    mySpeed = Math.random()*3;
    myR = (int)(Math.random() * 50) + 100;
    myG = (int)(Math.random() * 100) + 138;
    myB = (int)(Math.random() * 20) + 232;
  }
  
  public void show()
  {
   noStroke();
   fill(myR,myG,myB);
   ellipse((float)myX,(float)myY, 25,25);
  }

  public void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
}

class JumboParticle extends NormalParticle
  {

  void show()
  {
  fill((int)(Math.random() * 255));
  ellipse((float)myX,(float)myY,80,80);
  }
}
