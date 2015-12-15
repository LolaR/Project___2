//variables for the bad things
//hi
float c1x = 100;
float c1y = 100;
float c2x = 100;
float c2y = 100;
float c1t = 0;
float c2t = 0;
//variable for the basket is in Level one
//variables for the good things
float r1x = 200;
float r1y = 200;
float r2x = 200;
float r2y = 200;
float r3x = 200;
float r3y = 200;
void drawPage3(){
  //ground for this level
  fill(#E0D948);
  rect(-2, 280, 483, 40);

  //basket
  if(drag == 7){
    bx = mouseX-15;
    by = mouseY-17;
  }
  if(by<315){
    by = 260;
  }
  if(by>325){
    by = 260;
  }
  if(bx<0){
    bx = 0;
  } 
  if(bx>420){
    bx = 420;
  }  
  stroke(#000000);
  fill(#C85FF2);
  quad(bx,by,bx+50,by,bx+40,by+35,bx+10,by+35);//big face of basket
  beginShape(); //side of the basket
  vertex(bx+50,by);
  vertex(bx+40,by+35);
  vertex(bx+50,by+30);
  vertex(bx+60,by-5);
  endShape(CLOSE);
  //top of the basket
  stroke(#000000);
  fill(#B64DE0); //darker shade
  beginShape();
  vertex(bx+60,by-5);
  vertex(bx+50,by);
  vertex(bx,by);
  vertex(bx+20,by-6);
  endShape(CLOSE);
  
  //helper shape to drag the basket
  fill(256);
  stroke(256);
  rect(bx+10,by,30,35);
  
  //obstacles that will result in the person lossing all their points
  
  //the first bad thing on the left of the screen
  c1t += 0.1;
  c1x = 150 + 50 * sin(c1t);
  c1y = 250 + 50 * cos(c1t);
  fill(#00CC00);
  stroke(#000000);
  ellipse(c1x, c1y, 30,30);
  
  //the second bad thing on the right of the screen
  c2t += 0.1;
  c2x = 350 + 50 * cos(c2t);
  c2y = 250 + 50 * sin(c2t);
  stroke(#000000);
  fill(#00CC00);
  ellipse(c2x, c2y, 30,30);  
  
  //obstacles that will help move onto the next level
  
}  