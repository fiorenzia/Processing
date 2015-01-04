float t;

void setup()
{
size(1000,1000);
t=0;
}

PVector A,B,C,D;

void draw()
{
background(0);
A = new PVector(500,150);
B = new PVector(100,600);  
D = new PVector(800,950);
C = new PVector(980,180);
PVector p=new PVector();

int cc=0;

//p.y=A.x * (1-t) * (1-t) * (1-t) * (1-t) + B.x * (1-t)* (1-t)* (1-t) * t +   C.x * (1-t) * (1-t) * t * t  +  D.x * (1-t) * t * t * t * t ;
//p.x=A.y * (1-t) * (1-t) * (1-t) * (1-t) + B.y * (1-t) * (1-t) * (1-t) * t +  C.y * (1-t) * (1-t) * t * t  + D.y * (1-t) * t * t * t * t ;
p.x = (1-t)*(1-t)*(1-t)*A.x + 3*(1-t)*(1-t)*t*B.x + 3*(1-t)*t*t*C.x + t*t*t*D.x;
p.y = (1-t)*(1-t)*(1-t)*A.y + 3*(1-t)*(1-t)*t*B.y + 3*(1-t)*t*t*C.y + t*t*t*D.y;

t+=0.01f;
if(t > 1) t = 0;

ellipse(A.x,A.y,15,15);
ellipse(B.x,B.y,15,15);
ellipse(C.x,C.y,15,15);
ellipse(D.x,D.y,15,15);
ellipse(p.x,p.y,10,10);

}
