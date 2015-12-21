float n1x = 100;
float n1y = 100;
float n1t = 0; 
float n2x = 100;
float n2y = 100;
float n2t = 0;
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
}