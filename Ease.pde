PVector p,q,r; //Point
float v; //Velocity
float t; //Way

float Ease(float t)
{
  return -2*t*t*t+3*t*t*t;
}


void setup()
{
  size(800,800);
  v=0.01;
  t=0;
  p=new PVector(0,0); //Start
  q=new PVector(350,350); //Middle
  r=new PVector(800,800); //Goal
}

void draw()
{
  background(0);
  PVector X=PVector.add(PVector.mult(p,Ease(t-1)),PVector.mult(q,Ease(t)));
  ellipse(X.x,X.y,10,10);
  t+=v;
  println(X.x,X.y,t);
  if(t < 0 || t > 1)
  {
    t*=-1;
  }
}
