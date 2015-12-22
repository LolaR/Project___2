float n1x = 100;
float n1y = 100;
float n1t = 0; 
float n2x = 100;
float n2y = 100;
float n2t = 0;
float n3x = 100;
float n3y = 100;
float n3t = 0;

int m1x = 100;
int m1y = 100;
int m1VY = 5;
int m2x = 100;
int m2y = 100;
int m2VY = 5;
void drawPage5(){
//ground for this level
  fill(#E0D948);
  rect(-2, 280, 483, 40);

  //basket
  if (drag == 7) {
    bx = mouseX-15;
    by = mouseY-17;
  }
  if (by<315) {
    by = 260;
  }
  if (by>325) {
    by = 260;
  }
  if (bx<0) {
    bx = 0;
  } 
  if (bx>420) {
    bx = 420;
  }
  stroke(#000000);
  fill(#C85FF2);
  quad(bx, by, bx+50, by, bx+40, by+35, bx+10, by+35);//big face of basket
  beginShape(); //side of the basket
  vertex(bx+50, by);
  vertex(bx+40, by+35);
  vertex(bx+50, by+30);
  vertex(bx+60, by-5);
  endShape(CLOSE);
  //top of the basket
  stroke(#000000);
  fill(#B64DE0); //darker shade
  beginShape();
  vertex(bx+60, by-5);
  vertex(bx+50, by);
  vertex(bx, by);
  vertex(bx+20, by-6);
  endShape(CLOSE);  

  //helper shape to drag the basket
  fill(256);
  stroke(256);
  rect(bx+10, by, 30, 35);
  //helper shapes for basket collisions
  ellipse(bx+28, by+15, 40, 40);  
  
  
  //First Bad thing Left side
  n1t+=0.10;
  n1y+=5;
  if(n1y>290){
    n1y = -100;
  }
  n1x = 100 + 50 * cos(n1t);
  fill(#CC0000);
  stroke(#000000);
  ellipse(n1x, n1y, 30, 30); 
  
  //Second Bad thing right side
  n2t+=0.10;
  n2y+=5;
  if(n2y>290){
    n2y = -100;
  }
  n2x = 400 + 50 * cos(n2t);
  fill(#CC0000);
  stroke(#000000);
  ellipse(n2x, n2y, 30, 30); 
  
  //Third Bad thing middle
  n3t+=0.10;
  n3y+=3;
  if(n3y>290){
    n3y = -100;
  }
  n3x = 250 + 50 * cos(n3t);
  fill(#CC0000);
  stroke(#000000);
  ellipse(n3x, n3y, 30, 30);    
  
  //First Good thing
  fill(#FFFFFF);
  strokeWeight(.5);
  stroke(#000000);
  ellipse(m1x,m1y,50,50); //bottom
  ellipse(m1x,m1y-20,40,40); //middle
  ellipse(m1x,m1y-40,30,30); //head
  fill(#000000);
  ellipse(m1x-5,m1y-45,5,5); //eye
  ellipse(m1x+5,m1y-45,5,5); //eye
  ellipse(m1x, m1y-30,2,2); //mouth middle
  ellipse(m1x+7, m1y-33,2,2); //mouth right side
  ellipse(m1x-7, m1y-33,2,2); //mouth left side
  fill(#FF8205);
  ellipse(m1x,m1y-38,4,4); //nose
  fill(#000000);
  ellipse(m1x, m1y-18,7,7); //button 1st
  ellipse(m1x, m1y-8,7,7); //button 2nd
}