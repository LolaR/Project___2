//variables for the bad things
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
int r2x = (int)random(450)+10;
int r2y = 200;
float r3x = 200;
float r3y = 200;
int r2VY = 5;
float r1t = 0;
float r3t = 0;
int alpha = 256;
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
  
  
  
  
  //GOAL of LEVEL
  if(tCount>1){
    //alpha = 0;
    fill(#DE0202);
    ellipse(450,300,50,50);
    r1y = -200;
    r2y = -200;
    r3y = -200;
    
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
  
  //helper shapes to do a collision
  fill(256);
  stroke(256);
  ellipse(bx,by,5,5); //help with winning points especially
  ellipse(bx+10,by,5,5);
  ellipse(bx+20,by,5,5);
  ellipse(bx+30,by,5,5);
  ellipse(bx+40,by,5,5);
  ellipse(bx+50,by,5,5);
  //help with lossing all the points
  ellipse(bx+10,by+35,5,5); //theses are at the bottom of the basket
  ellipse(bx+20,by+35,5,5);
  ellipse(bx+30,by+35,5,5);
  ellipse(bx+40,by+35,5,5);
  ellipse(bx+5,by+17,5,5); //this is on the left side on the main face
  ellipse(bx+45,by+17,5,5); //this is on the right side on the main face
  ellipse(bx+60,by-6,5,5); //this is on the right size on the top side face
  
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
  
  //the first good thing
  r1t += 0.10;
  r1y+=5;
  if(r1y>290){
    r1y = -10;
  }
  r1x = 100 + 50 * cos(r1t);
  fill(#CC0000,alpha);
  stroke(#000000,alpha);
  ellipse(r1x,r1y,20,20);
  
  //the second good thing
  r2y += r2VY;
  if(r2y>290){
    r2y = -20;
    r2x = (int)random(450)+10;
  }
  fill(#CC0000,alpha);
  stroke(#000000,alpha);
  ellipse(r2x,r2y,20,20);
  
  //the third good thing
  r3t += 0.15;
  r3y += 5;
  if(r3y>290){
    r3y = -50;
  }
  r3x = 250 + 50 * cos(r3t);
  fill(#CC0000,alpha);
  stroke(#000000,alpha);
  ellipse(r3x,r3y,20,20);
  
  
  //collisions and score
  textSize(20);
  fill(#000000);
  text(tCount,25,310);
  
  //for the good objects
  if(dist(bx,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  } 
  if(dist(bx,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  }
  if(dist(bx,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  }  
  if(dist(bx+10,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  } 
  if(dist(bx+10,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  }
  if(dist(bx+10,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  }
  if(dist(bx+20,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  }  
  if(dist(bx+20,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  } 
  if(dist(bx+20,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  } 
  if(dist(bx+30,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  } 
  if(dist(bx+30,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  } 
  if(dist(bx+30,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  } 
  if(dist(bx+40,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  } 
  if(dist(bx+40,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  } 
  if(dist(bx+40,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  }  
  if(dist(bx+50,by,r1x,r1y)<=10){
    r1y = -10;
    tCount++;
  } 
  if(dist(bx+50,by,r2x,r2y)<=10){
    r2y = -10;
    tCount++;
  } 
  if(dist(bx+50,by,r3x,r3y)<=10){
    r3y = -10;
    tCount++;
  }  
  
  
  println( r1y);
  
  //collisions for the bad objects
  
  if(dist(bx,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }  
  if(dist(bx+10,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+10,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  if(dist(bx+20,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+20,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+30,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+30,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  if(dist(bx+40,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+40,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }  
  if(dist(bx+50,by,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+50,by,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }   
  
  if(dist(bx+10,by+35,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+10,by+35,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+20,by+35,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+20,by+35,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+30,by+35,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+30,by+35,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }  
  if(dist(bx+40,by+35,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+40,by+35,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  
  if(dist(bx+5,by+17,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+5,by+17,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  if(dist(bx+45,by+17,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  if(dist(bx+45,by+17,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  if(dist(bx+60,by-6,c1x,c1y)<=10){
    text("Game OVer", 200,130);
    r1y = -1000;
    r2y = -2000;
    r3y = -1000;
    bx = 0;
    by = 270;
    tCount = 0;
  }
  if(dist(bx+60,by-6,c2x,c2y)<=10){
    text("Game OVer", 200,130);
    r1y = -500;
    r2y = -1000;
    r3y = -500;
    bx = 0;
    by = 270;
    tCount = 0;
  } 
  
  //collision for advancing to next level
  if(dist(450,300,bx+20,by+35)<=10){
    page = 7;
  }
  if(dist(450,300,bx+30,by+35)<=10){
    page = 7;
  }  
}  