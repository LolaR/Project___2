int b1x = 150;
int b1y = 150; 

int b2x = 230;
int b2y = 150;

int b3x = 310;
int b3y = 150;

int b4x = 191;
int b4y = 200;

int b5x = 271;
int b5y = 200;

int levelPlay = 5;

void drawPage8() {
  textSize(60);
  fill(#FFFFFF);
  text("Levels", 157, 105);

  // level buttons
  fill(#FFFF00);
  rect(b1x, b1y, 30, 30, 7);

  if (levelPlay == 1) {
    fill(#bbbb00);
  }

  rect(b2x, b2y, 30, 30, 7);

  if (levelPlay == 2) {
    fill(#bbbb00);
  }
  rect(b3x, b3y, 30, 30, 7);

  if (levelPlay == 3) {
    fill(#bbbb00);
  }
  rect(b4x, b4y, 30, 30, 7);

  if (levelPlay == 4) {
    fill(#bbbb00);
  }
  rect(b5x, b5y, 30, 30, 7);

  textSize(20);
  fill(#000000);
  text("1", 159, 172);
  text("2", 239, 172);
  text("3", 319, 172);  
  text("4", 200, 223);  
  text("5", 280, 223);
}