void setup()
{
  size(600,600);
}

void draw()
{
  translate(width/2,height/2);
  float lx=-300;
  float ly=300;
  float lxx=200;
  float lyy=-300;
  float kyoriX=abs(lx-lxx);
  float kyoriY=abs(ly-lyy);
  float pointY=abs(ly-(mouseY-300));
  float pointX=abs(lx-(mouseX-300));
  float pointtyokusen=sqrt(pointX*pointX+pointY*pointY);
  float tyokusen=sqrt(kyoriX*kyoriX+kyoriY*kyoriY);
  float susumukyoriX=kyoriX/tyokusen;
  float susumukyoriY=kyoriY/tyokusen;
  float naiseki=(pointX*lx)+(pointY*ly);
  float naiseki2=(pointX*susumukyoriX)+(pointY*susumukyoriY);
  background(255);
  line(300,0,-300,0); //baseline X
  line(0,300,0,-300); //baseline Y
  line(lx,ly,lxx,lyy);
  line(lx,ly,mouseX-300,mouseY-300);
  line(mouseX-300,mouseY-300,kyoriX*naiseki,kyoriY*naiseki); //?
}
