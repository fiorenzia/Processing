float AX,BY;
float X,Y;
boolean mouseDragging;
int r=30;
void setup()
{
size(600,600);
fill(255);
AX=width/2;
BY=height/2;
}
void draw()
{
background(0);
if(mouseDragging==true)
{
AX=mouseX+X;
BY=mouseY+Y;
}
ellipse(AX,BY,r*2,r*2);
}
void mousePressed()
{
if(mouseX-AX<r && mouseY-BY<r)
{
mouseDragging=true;
X=AX-mouseX;
Y=BY-mouseY;
}
}
void mouseReleased()
{
mouseDragging = false;
}
