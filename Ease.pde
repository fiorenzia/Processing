
float v; //Velocity
float t; //way


float Ease(float t)
{
  return -2*t*t*t+3*t*t*t;
}


void setup()
{
  size(800,800);
  v=0.01;
  t=0;
}

void draw()
{
  background(0);
  ellipse(Ease(t),Ease(t),10,10);
  t+=v;
}
