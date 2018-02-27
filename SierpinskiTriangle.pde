public void setup()
{
size(500,500);
}

public void draw()
{
sierpinski(50,450,400);
}

public void mouseDragged()
{

}

public void sierpinski(int x, int y, int length) 
{
  if(length <= 1)
  {
    triangle( x - length/2,y+length, x,y, x + length/2,y + length);
  }
  else
  {
  sierpinski(x,y,length/2);
  sierpinski(x+length/2,y,length/2);
  sierpinski(x+length/4,y-length/2,length/2);
  }
}