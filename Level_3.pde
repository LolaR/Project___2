//variables for bad things
float c3x = 100;
float c3y = 100;
float c3t = 0;
int s1x = 30;
int s1y = 0;
int s1VY = 5;
int s2x = 420;
int s2y = 0;
int s2VY = 3;
//variable for good things
int t1x = (int)random(450);
int t1y = 200;
int t1VY = 4;
int t2x = (int)random(450);
int t2y = 200;
int t2VY = 5;
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

  



  //GOAL of LEVEL
  if (tCount>1) {
    fill(#DE0202);
    ellipse(450, 300, 50, 50);
    t1y = -200;
    t2y = -200;

  }    
  

    



  
  game =3;
  
      //Continuing on to the next level
    if (dist(450, 300, bx+20, by+35)<=10) {
      page = 7;
    }
    if (dist(450, 300, bx+30, by+35)<=10) {
      page = 7;
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

  //the first bad thing in the middle of the screen
  c3t += 0.1;
  c3x = 250 + 80 * cos(c3t/2);
  c3y = 250 + 80 * sin(c3t);
  fill(#00CC00);
  stroke(#000000);
  ellipse(c3x, c3y, 30, 30);

  //the second bad thing moving up and down on the left
  s1y+=s1VY;
  if (s1y>330) {
    s1y = -20;
  }
  fill(#00CC00);
  stroke(#000000);
  rect(s1x, s1y, 70, 20);

  //the third bad think moving up and down on the right
  s2y+=s2VY;
  if (s2y>330) {
    s2y = -50;
  }  
  fill(#00CC00);
  stroke(#000000);
  rect(s2x, s2y, 70, 20); 

  //first good falling thing
  t1y+=t1VY;
  if (t1y>330) {
    t1y = -10;
    t1x = (int)random(450);
  }
  fill(#118E12);
  stroke(#118E12);
  triangle(t1x, t1y, t1x+30, t1y, t1x+15, t1y-15);
  triangle(t1x, t1y-10, t1x+30, t1y-10, t1x+15, t1y-25);
  triangle(t1x, t1y-20, t1x+30, t1y-20, t1x+15, t1y-35);
  fill(#674716);
  stroke(#674716);
  rect(t1x+10, t1y, 10, 20);

  //second good fall thing
  t2y+=t2VY;
  if (t2y>330) {
    t2y = -10;
    t2x = (int)random(450);
  }  
  fill(#118E12);
  stroke(#118E12);
  triangle(t2x, t2y, t2x+30, t2y, t2x+15, t2y-15); // bottom 
  triangle(t2x, t2y-10, t2x+30, t2y-10, t2x+15, t2y-25); //middle
  triangle(t2x, t2y-20, t2x+30, t2y-20, t2x+15, t2y-35); //top
  fill(#674716);
  stroke(#674716);
  rect(t2x+10, t2y, 10, 20); //trunk 


  //collisions and Score

  textSize(20);
  fill(#000000);
  text(tCount, 25, 310);


  //collision for gaining points

  //for the first thing
  if(bx+10 + 30 > t1x && bx+10 < t1x + 10 && by + 35 > t1y && by < t1y + 20){
    t1y = -10;
    tCount++;
  }  
  //for the second thing
  if(bx+10 + 30 > t2x && bx+10 < t2x + 10 && by + 35 > t2y && by < t2y + 20){
    t2y = -10;
    tCount++;
  }
  
  //collision for losing points
  //for the circle bad thing
  if(dist(bx+28,by+15,c3x,c3y)<=5){
   tCount = 0;
   textSize(20);
   fill(#000000);
   text("Game Over", 200, 130);
   t1y = -500;
   t2y = -800;
  }
  //for the rectangle bad thing on the left
  if(bx+10 + 30 > s1x && bx+10 < s1x + 70 && by + 35 > s1y && by < s1y + 20){
   tCount = 0;
   textSize(20);
   fill(#000000);
   text("Game Over", 200, 130);
   t1y = -500;
   t2y = -800;
  }
  //for the rectangle bad thing on the right
  if(bx+10 + 30 > s2x && bx+10 < s2x + 70 && by + 35 > s2y && by < s2y + 20){
   tCount = 0;
   textSize(20);
   fill(#000000);
   text("Game Over", 200, 130);
   t1y = -500;
   t2y = -800;
  }

  //collision for advancing to next level
  if (dist(450, 300, bx+20, by+35)<=10) {
    page = 7;
  }
  if (dist(450, 300, bx+30, by+35)<=10) {
    page = 7;
  }  

  //for the first tree
  if (bx+10 + 30 > t1x+10 && bx+10 < t1x+10 + 10 && by + 35 > t1y && by < t1y + 20) {
    t2y = -100;
    t1y = -50;
    tCount++;
  }  
  //for the second tree
  if (bx+10 + 30 > t2x+10 && bx+10 < t2x+10 + 10 && by + 35 > t2y && by < t2y + 20) {
    t2y = -100;
    t1y = -50;
    tCount++;
  }

  //collision for losing points
  //for the bad thing moving up and down on the left
  if (bx+10 + 30 > s1x && bx+10 < s1x + 70 && by + 35 > s1y && by < s1y + 20) {
    textSize(30);
    fill(#000000);
   // text("Game Over", 200, 130);
    t1y = -500;
    t2y = -300;
    tCount = 0;
  }
  //for the bad thing moving up and down on the right
  if (bx+10 + 30 > s2x && bx+10 < s2x + 70 && by + 35 > s2y && by < s2y + 20) {
    textSize(30);
    fill(#000000);
    text("Game Over", 200, 130);
    t1y = -500;
    t2y = -300;
    tCount = 0;
  }
  //for the bad thing in the center 
  if (dist(c3x, c3y, bx+28, by+15)<=10){
    textSize(30);
    fill(#000000);
    text("Game Over", 200, 130);
    t1y = -500;
    t2y = -300; 
    tCount = 0;
  }

}