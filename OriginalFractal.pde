public void setup()
{
size (800,800);
background(0);
myFractal(400,400,200,250);
}
public void draw()
{
}
public void myFractal(float x,float y,float rad,float clr){
  if(rad<10){
    stroke (15,15,clr);
    fill(0,0,clr);
 beginShape();
vertex(x+rad, y+rad);
vertex(x, y+0.6*rad);
vertex(x-rad, y+rad);
vertex(x-0.6*rad, y);
vertex(x-rad, y-rad);
vertex(x, y-0.6*rad);
vertex(x+rad, y-rad);
vertex(x+0.6*rad, y);
endShape(CLOSE);
  }
else {
   stroke (5,5,clr);
   fill(15,15,clr,80);
  beginShape();
vertex(x+rad, y+rad);
vertex(x, y+0.6*rad);
vertex(x-rad, y+rad);
vertex(x-0.6*rad, y);
vertex(x-rad, y-rad);
vertex(x, y-0.6*rad);
vertex(x+rad, y-rad);
vertex(x+0.6*rad, y);
endShape(CLOSE);
myFractal(x+rad, y+rad,rad*0.492,clr*0.8);
myFractal(x-rad, y+rad,rad*0.492,clr*0.8);
myFractal(x-rad, y-rad,rad*0.492,clr*0.8);
myFractal(x+rad, y-rad,rad*0.492,clr*0.8);


}

}
