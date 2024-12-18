
float g = 9.82/frameRate;
float d = 0.008;
color backgroundColor = #67A762;

ThrowBall ball;
Goal goal;

boolean mDragged;

PVector mStart;
PVector mEnd;
float throwForce;

void setup() {
  //fullScreen();
  size(1000,800);
  background(backgroundColor);
  
  mStart = new PVector(0,0);
  mEnd = new PVector(0,0);
  

  ball = new ThrowBall(500, 500, 50, 10);
  goal = new Goal(width - 100,200,200,50);
}

void draw() {
  background(backgroundColor);
  ball.addForce(new PVector(0, ball.mass*g));
  ball.addForce(new PVector(throwForce,0));
  ball.update();
  

  goal.display();


  
}

void mousePressed(){
  mStart.set(mouseX,mouseY);
}
void mouseReleased(){
  mEnd.set(mouseX,mouseY);
  
  println(mStart,mEnd);

  float dragDis = PVector.dist(mStart,mEnd);
  println(dragDis);

throwForce = dragDis/500;
  

}
