float ry=0;

void setup()
{
  size(500,500,P3D);
}

void draw()
{
lights();
background(100);
translate(width/2,height/2);
rotateY(ry);
ry+=0.05f;

rect(0,0,55,200);

translate(50,0);
rotateY(1);
rect(0,0,50,200);

translate(50,0);
rotateY(1);
rect(0,0,50,200);

translate(50,0);
rotateY(1);
rect(0,0,50,200);

translate(50,0);
rotateY(1);
rect(0,0,50,200);

translate(50,0);
rotateY(1.1f);
rect(0,0,65,200);
}
