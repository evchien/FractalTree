private double fractionLength = .77; 
private int smallestBranch = 5; 
private double branchAngle = .15;  
public void setup()
{   
  //size(640,480);
  size(800,640);
  background(216,229,206);
  noLoop(); 
} 
public void draw() 
{    
  //stroke(91,155,41);   
  //line(320,480,320,380);   
  //drawBranches(320, 380, 200, 3*Math.PI/2);
  strokeWeight(15);
  stroke(88,50,50);
  line(400,640,400,535);
  strokeWeight(2);
  drawBranches(400,540,200,3*Math.PI/2);
  drawBranches(400,540,200,3*Math.PI/2+50);
  drawBranches(400,540,200,3*Math.PI/2-50);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1)+x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2)+x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y);
  if(branchLength > 90){stroke(88,50,50); strokeWeight(5);}
  else if(branchLength < 90 && branchLength > 50){stroke(88,100,50); strokeWeight(3);}
  else{stroke(88,150,50); strokeWeight(2);}
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  if(branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength-3, angle1+PI/5);
    drawBranches(endX2, endY2, branchLength-3, angle2-PI/5);
  }
} 
