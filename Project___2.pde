int page = 1;
int drag = 0;
int tCount;

void setup (){
  size(480,320);
  frameRate(30);
}

void draw(){
  background(#9DFDFF);
  if(page == 1){ //title page
    drawPage1();
  }
  if(page == 2){ //level 1
    background(#9DFDFF);
   drawPage2(); 
  }
  if(page == 3){ //level 2
    background(#CE7D2C);
   drawPage3(); 
  }
  if(page == 4){ //level 3
    background(#880000);
   drawPage4(); 
  }
  if(page == 5){ //level 4
    background(#008800);
   drawPage5(); 
  }
  if(page == 6){ //level 5
    background(#888800);
   drawPage6(); 
  }
  if(page == 7){ //winning page
    background(#880000);
   drawPage7(); 
  }
  if(page == 8){ //level page
    background(#7E1EAF);
    drawPage8();
  }
}
void mousePressed(){
  if(mouseX > buttonx && mouseX < buttonx+50 && mouseY > buttony && mouseY < buttony+20){
    page = 8; //button leads to level page
  }
  if(mouseX > b1x && mouseX < b1x+30 && mouseY > b1y && mouseY < b1y+30){
    page = 2; //button leads to level 1
  }
  if(mouseX > b2x && mouseX < b2x+30 && mouseY > b2y && mouseY < b2y+30){
    page = 3; //button leads to level 2
  }
  if(mouseX > b3x && mouseX < b3x+30 && mouseY > b3y && mouseY < b3y+30){
    page = 4; //button leads to level 3
  }
  if(mouseX > b4x && mouseX < b4x+30 && mouseY > b4y && mouseY < b4y+30){
    page = 5; //button leads to level 4
  }
  if(mouseX > b5x && mouseX < b5x+30 && mouseY > b5y && mouseY < b5y+30){
    page = 6; //button leads to level 5
  }
  if(mouseX > bx+10 && mouseX < bx+40 && mouseY > by && mouseY < by+35){
    drag = 7;
  }
  
  if(page ==8){
    
   /* 
    if(u press button 1){
      page = "2"
      
    }
    
    if(u press 2 && levelPlay <= 2){
     page = "3" 
    }
    
    
        if(u press 3 && levelPlay <= 3){
     page = "5" 
    }
    
    
    
    
    */
     
    
  }
  
}
void mouseReleased(){
  drag = 0;
}