//Level 2
int bw1x = 191;
int bw1y = 130;
int bw2x = 191;
int bw2y = 190;
<<<<<<< HEAD
=======
//Level 3
>>>>>>> origin/master
int bw3x = 191;
int bw3y = 130;
int bw4x = 191;
int bw4y = 190;
<<<<<<< HEAD
void drawPage7(){
=======

void drawPage7() {
  println(game);
>>>>>>> origin/master
  //After Level 2
  //this brings the person to the next level.
    textSize(50);
    fill(#000000);
    text("Good Job!", 130, 100);
    fill(#5A584C);
    rect(bw1x, bw1y, 108, 40);
    fill(#FFFFFF);
    textSize(20);
    text("Next Level", 195, 158);
  //this brings the person back to the levels page
  fill(#5A584C);
  rect(bw2x, bw2y, 108, 40);  
  fill(#FFFFFF);
  textSize(20);
<<<<<<< HEAD
  text("Home", 218,217);  
  
  //After Level 3
  //this brings the person to the next level.
  textSize(50);
  fill(#000000);
  text("Good Job!", 130,100);
  fill(#5A584C);
  rect(bw3x,bw3y,108,40);
  fill(#FFFFFF);
  textSize(20);
  text("Next Level", 195,158);  
  //this brings the person back to the levels page
  fill(#5A584C);
  rect(bw4x,bw4y,108,40);  
  fill(#FFFFFF);
  textSize(20);
  text("Home", 218,217);    
=======
  text("Home", 218, 217);  
>>>>>>> origin/master
}