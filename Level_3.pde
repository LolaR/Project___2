float c3x = 100;
float c3y = 100;
float c3t = 0;
void drawPage4() {
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

  //the first bad thing on the left of the screen
  c3t += 0.1;
  c3x = 250 + 80 * cos(c3t/2);
  c3y = 250 + 80 * sin(c3t);
  fill(#00CC00);
  stroke(#000000);
  ellipse(c3x, c3y, 30, 30);
}