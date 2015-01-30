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
  q=new PVector(200,100); //Middle
  r=new PVector(800,800); //Goal
}

void draw()
{
  background(0);
  PVector X=PVector.add(PVector.mult(p,Ease(t-1)),PVector.mult(q,Ease(t)));
  PVector Y=PVector.add(PVector.mult(q,Ease(t-1)),PVector.mult(r,Ease(t)));
  ellipse(X.x,X.y,10,10);
  t+=v;
 /// println(X.x,X.y,t);
  println(Y.x,Y.y,t);
  if(t > 1)
  {
    ellipse(Y.x,Y.y,10,10);
  }
}
