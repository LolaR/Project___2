int buttonx = 220;
int buttony = 250;

void drawPage1(){
  if(drag == 1){
    buttonx = mouseX;
    buttony = mouseY;
  }
  fill(#007700);
  rect(buttonx-13,buttony,50,20);
  textSize(15);
  fill(#FFFF00);
  text("START",210,266);
 
  //Title of game
  textSize(40);
  fill(#323D7C);
  text("Catching Christmas",50,100);
  
  //Game Creators
  textSize(20);
  fill(#323D7C);
  text("Lola R. and Joyce L.", 145,140);
  
  //Storyline
  textSize(18);
  fill(#B41818);
  text(">>Save Christmas!<<", 138, 180);
  
  textSize(15);
  fill(#000000);
  text("Use the basket to catch the elements for", 80,210);
  text("the perfect Christmas spirit!", 120,230);
  
}